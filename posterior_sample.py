import json
import yaml
import torch
import argparse
from torchvision.utils import save_image
from forward_operator import get_operator
from data import get_dataset
from sampler import get_sampler
from model import get_model
from eval import Metrics
from torch.nn.functional import interpolate
from pathlib import Path
from omegaconf import OmegaConf
import hydra
import wandb
import setproctitle
from PIL import Image
import numpy as np


def load_yaml(file_path: str) -> dict:
    with open(file_path) as f:
        config = yaml.load(f, Loader=yaml.FullLoader)
    return config

def norm_01(y):
    tmp = (y - y.mean()) / y.std()
    tmp = tmp.clip(-0.5, 0.5) * 3
    return tmp

def resize(y, x, task_name):
    """[B, C, H, W]"""
    if y.shape != x.shape:
        ry = interpolate(y, size=x.shape[-2:], mode='bilinear', align_corners=False)
    else:
        ry = y
    if task_name == 'phase_retrieval':
        ry = norm_01(ry) * 2 - 1
    return ry

# def norm(y):
#     return (y - y.max(dim=0, keepdims=True)[0]) / (y.max(dim=0, keepdims=True)[0] - y.min(dim=0, keepdims=True)[0])


def safe_dir(dir):
    if not Path(dir).exists():
        Path(dir).mkdir()
    return Path(dir)

def norm(x):
    return (x * 0.5 + 0.5).clip(0, 1)

def to_pil(x):
    pils = []
    for x_ in x:
        pil_x = norm(x_).permute(1, 2, 0).cpu().numpy() * 255
        pil_x = pil_x.astype(np.uint8)
        pil_x = Image.fromarray(pil_x)
        pils.append(pil_x)
    return pils

def log_results(args, sde_trajs, results, images, y, full_samples, table_markdown):
    full_samples = full_samples.flatten(0, 1)
    root = safe_dir(Path(args.save_dir) / args.name)
    with open(str(root / 'config.yaml'), 'w') as file:
        yaml.safe_dump(OmegaConf.to_container(args, resolve=True), file, default_flow_style=False, allow_unicode=True)

    stack = torch.cat([images, resize(y, images, args.task.operator.name), full_samples])
    save_image(stack * 0.5 + 0.5, fp=str(root / 'grid_results.png'), nrow=args.batch_size)

    if args.save_samples:
        pil_image_list = to_pil(full_samples)
        image_dir = safe_dir(root / 'samples')
        cnt = 0
        for run in range(args.num_runs):
            for idx in range(args.batch_size):
                image_path = image_dir / '{:05d}_r{:02d}.png'.format(idx, run)
                pil_image_list[cnt].save(str(image_path))
                cnt += 1

    if args.save_traj:
        for seed, sde_traj in enumerate(sde_trajs):
            torch.save(sde_traj, str(root / 'sde_traj_seed{}.pth'.format(seed)))

    with open(str(root / 'eval.md'), 'w') as file:
        file.write(table_markdown)

    json.dump(results, open(str(root / 'metrics.json'), 'w'), indent=4)


def visualize_grid(args, images, name='debug.png'):
    root = Path(args.save_dir) / args.name
    save_image(images * 0.5 + 0.5, fp=str(root / name), nrow=args.batch_size)


def sample_in_sub_batch(sampler, model, x_start, operator, y, SDE, verbose, record, sub_batch_size):
    samples = []
    for s in range(0, len(x_start), sub_batch_size):
        cur_x_start = x_start[s:s + sub_batch_size]
        cur_y = y[s:s + sub_batch_size]
        cur_samples = sampler.sample(model, cur_x_start, operator, cur_y, SDE=SDE, verbose=verbose, record=record)
        samples.append(cur_samples)
    return torch.cat(samples, dim=0)


@hydra.main(version_base='1.3', config_path='config', config_name='default.yaml')
def main(args):
    torch.manual_seed(args.seed)
    torch.cuda.manual_seed_all(args.seed)
    setproctitle.setproctitle(args.name)

    print(args)
    torch.cuda.set_device('cuda:{}'.format(args.gpu))

    # get data
    data = get_dataset(**args.data)
    images = data.get_data(args.batch_size, 0)

    # get operator & measurement
    operator = get_operator(**args.task.operator)
    y = operator.measure(images)

    # get sampler
    sampler = get_sampler(**args.sampler, likelihood_estimator_config=args.task.likelihood_estimator_config)

    # get model
    model = get_model(**args.model)

    # +++++++++++++++++++++++++++++++++++
    # main sampling process
    full_samples = []
    sde_trajs = []
    for _ in range(args.num_runs):
        x_start = sampler.get_start(images)
        samples = sample_in_sub_batch(sampler, model, x_start, operator, y, SDE=True, verbose=True, record=True,
                                      sub_batch_size=args.sub_batch_size)
        sampler.sde_traj.compile()
        full_samples.append(samples)
        sde_trajs.append(sampler.sde_traj)
    full_samples = torch.stack(full_samples, dim=0)

    # evaluate
    metrics = Metrics(images, operator, y)
    results = metrics.eval(full_samples)
    markdown_text = metrics.display(results)

    print(markdown_text)

    # log results
    log_results(args, sde_trajs, results, images, y, full_samples, markdown_text)
    if args.wandb:
        wandb.init(
            # set the wandb project where this run will be logged
            project=args.project_name,
            # track hyperparameters and run metadata
            name=args.name,
            config=OmegaConf.to_container(args, resolve=True)
        )
        metrics.log_wandb(results, args.batch_size)
    print(f'finish {args.name}!')


if __name__ == '__main__':
    main()
