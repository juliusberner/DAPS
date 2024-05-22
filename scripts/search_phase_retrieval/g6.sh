# ode20_step500_tau0.03_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=500 task.likelihood_estimator_config.lr=2.7e-05 task.likelihood_estimator_config.ode_step=20 task.likelihood_estimator_config.tau=0.03 name=ode20_step500_tau0.03_alpha0.03 +seed=42 gpu=6

# ode20_step500_tau0.005_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=500 task.likelihood_estimator_config.lr=7.5e-07 task.likelihood_estimator_config.ode_step=20 task.likelihood_estimator_config.tau=0.005 name=ode20_step500_tau0.005_alpha0.03 +seed=42 gpu=6

# ode20_step500_tau0.001_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=500 task.likelihood_estimator_config.lr=3e-08 task.likelihood_estimator_config.ode_step=20 task.likelihood_estimator_config.tau=0.001 name=ode20_step500_tau0.001_alpha0.03 +seed=42 gpu=6

# ode10_step500_tau0.03_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=500 task.likelihood_estimator_config.lr=2.7e-05 task.likelihood_estimator_config.ode_step=10 task.likelihood_estimator_config.tau=0.03 name=ode10_step500_tau0.03_alpha0.03 +seed=42 gpu=6

# ode10_step500_tau0.005_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=500 task.likelihood_estimator_config.lr=7.5e-07 task.likelihood_estimator_config.ode_step=10 task.likelihood_estimator_config.tau=0.005 name=ode10_step500_tau0.005_alpha0.03 +seed=42 gpu=6

# ode10_step500_tau0.001_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=500 task.likelihood_estimator_config.lr=3e-08 task.likelihood_estimator_config.ode_step=10 task.likelihood_estimator_config.tau=0.001 name=ode10_step500_tau0.001_alpha0.03 +seed=42 gpu=6

# ode3_step500_tau0.03_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=500 task.likelihood_estimator_config.lr=2.7e-05 task.likelihood_estimator_config.ode_step=3 task.likelihood_estimator_config.tau=0.03 name=ode3_step500_tau0.03_alpha0.03 +seed=42 gpu=6

# ode3_step500_tau0.005_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=500 task.likelihood_estimator_config.lr=7.5e-07 task.likelihood_estimator_config.ode_step=3 task.likelihood_estimator_config.tau=0.005 name=ode3_step500_tau0.005_alpha0.03 +seed=42 gpu=6

# ode3_step500_tau0.001_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=500 task.likelihood_estimator_config.lr=3e-08 task.likelihood_estimator_config.ode_step=3 task.likelihood_estimator_config.tau=0.001 name=ode3_step500_tau0.001_alpha0.03 +seed=42 gpu=6

# ode1_step500_tau0.03_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=500 task.likelihood_estimator_config.lr=2.7e-05 task.likelihood_estimator_config.ode_step=1 task.likelihood_estimator_config.tau=0.03 name=ode1_step500_tau0.03_alpha0.03 +seed=42 gpu=6

# ode1_step500_tau0.005_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=500 task.likelihood_estimator_config.lr=7.5e-07 task.likelihood_estimator_config.ode_step=1 task.likelihood_estimator_config.tau=0.005 name=ode1_step500_tau0.005_alpha0.03 +seed=42 gpu=6

# ode1_step500_tau0.001_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=500 task.likelihood_estimator_config.lr=3e-08 task.likelihood_estimator_config.ode_step=1 task.likelihood_estimator_config.tau=0.001 name=ode1_step500_tau0.001_alpha0.03 +seed=42 gpu=6

# ode20_step300_tau0.03_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=300 task.likelihood_estimator_config.lr=2.7e-05 task.likelihood_estimator_config.ode_step=20 task.likelihood_estimator_config.tau=0.03 name=ode20_step300_tau0.03_alpha0.03 +seed=42 gpu=6

# ode20_step300_tau0.005_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=300 task.likelihood_estimator_config.lr=7.5e-07 task.likelihood_estimator_config.ode_step=20 task.likelihood_estimator_config.tau=0.005 name=ode20_step300_tau0.005_alpha0.03 +seed=42 gpu=6

# ode20_step300_tau0.001_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=300 task.likelihood_estimator_config.lr=3e-08 task.likelihood_estimator_config.ode_step=20 task.likelihood_estimator_config.tau=0.001 name=ode20_step300_tau0.001_alpha0.03 +seed=42 gpu=6

# ode10_step300_tau0.03_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=300 task.likelihood_estimator_config.lr=2.7e-05 task.likelihood_estimator_config.ode_step=10 task.likelihood_estimator_config.tau=0.03 name=ode10_step300_tau0.03_alpha0.03 +seed=42 gpu=6

# ode10_step300_tau0.005_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=300 task.likelihood_estimator_config.lr=7.5e-07 task.likelihood_estimator_config.ode_step=10 task.likelihood_estimator_config.tau=0.005 name=ode10_step300_tau0.005_alpha0.03 +seed=42 gpu=6

# ode10_step300_tau0.001_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=300 task.likelihood_estimator_config.lr=3e-08 task.likelihood_estimator_config.ode_step=10 task.likelihood_estimator_config.tau=0.001 name=ode10_step300_tau0.001_alpha0.03 +seed=42 gpu=6

# ode3_step300_tau0.03_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=300 task.likelihood_estimator_config.lr=2.7e-05 task.likelihood_estimator_config.ode_step=3 task.likelihood_estimator_config.tau=0.03 name=ode3_step300_tau0.03_alpha0.03 +seed=42 gpu=6

# ode3_step300_tau0.005_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=300 task.likelihood_estimator_config.lr=7.5e-07 task.likelihood_estimator_config.ode_step=3 task.likelihood_estimator_config.tau=0.005 name=ode3_step300_tau0.005_alpha0.03 +seed=42 gpu=6

# ode3_step300_tau0.001_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=300 task.likelihood_estimator_config.lr=3e-08 task.likelihood_estimator_config.ode_step=3 task.likelihood_estimator_config.tau=0.001 name=ode3_step300_tau0.001_alpha0.03 +seed=42 gpu=6

# ode1_step300_tau0.03_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=300 task.likelihood_estimator_config.lr=2.7e-05 task.likelihood_estimator_config.ode_step=1 task.likelihood_estimator_config.tau=0.03 name=ode1_step300_tau0.03_alpha0.03 +seed=42 gpu=6

# ode1_step300_tau0.005_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=300 task.likelihood_estimator_config.lr=7.5e-07 task.likelihood_estimator_config.ode_step=1 task.likelihood_estimator_config.tau=0.005 name=ode1_step300_tau0.005_alpha0.03 +seed=42 gpu=6

# ode1_step300_tau0.001_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=300 task.likelihood_estimator_config.lr=3e-08 task.likelihood_estimator_config.ode_step=1 task.likelihood_estimator_config.tau=0.001 name=ode1_step300_tau0.001_alpha0.03 +seed=42 gpu=6

# ode20_step100_tau0.03_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=100 task.likelihood_estimator_config.lr=2.7e-05 task.likelihood_estimator_config.ode_step=20 task.likelihood_estimator_config.tau=0.03 name=ode20_step100_tau0.03_alpha0.03 +seed=42 gpu=6

# ode20_step100_tau0.005_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=100 task.likelihood_estimator_config.lr=7.5e-07 task.likelihood_estimator_config.ode_step=20 task.likelihood_estimator_config.tau=0.005 name=ode20_step100_tau0.005_alpha0.03 +seed=42 gpu=6

# ode20_step100_tau0.001_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=100 task.likelihood_estimator_config.lr=3e-08 task.likelihood_estimator_config.ode_step=20 task.likelihood_estimator_config.tau=0.001 name=ode20_step100_tau0.001_alpha0.03 +seed=42 gpu=6

# ode10_step100_tau0.03_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=100 task.likelihood_estimator_config.lr=2.7e-05 task.likelihood_estimator_config.ode_step=10 task.likelihood_estimator_config.tau=0.03 name=ode10_step100_tau0.03_alpha0.03 +seed=42 gpu=6

# ode10_step100_tau0.005_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=100 task.likelihood_estimator_config.lr=7.5e-07 task.likelihood_estimator_config.ode_step=10 task.likelihood_estimator_config.tau=0.005 name=ode10_step100_tau0.005_alpha0.03 +seed=42 gpu=6

# ode10_step100_tau0.001_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=100 task.likelihood_estimator_config.lr=3e-08 task.likelihood_estimator_config.ode_step=10 task.likelihood_estimator_config.tau=0.001 name=ode10_step100_tau0.001_alpha0.03 +seed=42 gpu=6

# ode3_step100_tau0.03_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=100 task.likelihood_estimator_config.lr=2.7e-05 task.likelihood_estimator_config.ode_step=3 task.likelihood_estimator_config.tau=0.03 name=ode3_step100_tau0.03_alpha0.03 +seed=42 gpu=6

# ode3_step100_tau0.005_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=100 task.likelihood_estimator_config.lr=7.5e-07 task.likelihood_estimator_config.ode_step=3 task.likelihood_estimator_config.tau=0.005 name=ode3_step100_tau0.005_alpha0.03 +seed=42 gpu=6

# ode3_step100_tau0.001_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=100 task.likelihood_estimator_config.lr=3e-08 task.likelihood_estimator_config.ode_step=3 task.likelihood_estimator_config.tau=0.001 name=ode3_step100_tau0.001_alpha0.03 +seed=42 gpu=6

# ode1_step100_tau0.03_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=100 task.likelihood_estimator_config.lr=2.7e-05 task.likelihood_estimator_config.ode_step=1 task.likelihood_estimator_config.tau=0.03 name=ode1_step100_tau0.03_alpha0.03 +seed=42 gpu=6

# ode1_step100_tau0.005_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=100 task.likelihood_estimator_config.lr=7.5e-07 task.likelihood_estimator_config.ode_step=1 task.likelihood_estimator_config.tau=0.005 name=ode1_step100_tau0.005_alpha0.03 +seed=42 gpu=6

# ode1_step100_tau0.001_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=100 task.likelihood_estimator_config.lr=3e-08 task.likelihood_estimator_config.ode_step=1 task.likelihood_estimator_config.tau=0.001 name=ode1_step100_tau0.001_alpha0.03 +seed=42 gpu=6

# ode20_step10_tau0.03_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=10 task.likelihood_estimator_config.lr=2.7e-05 task.likelihood_estimator_config.ode_step=20 task.likelihood_estimator_config.tau=0.03 name=ode20_step10_tau0.03_alpha0.03 +seed=42 gpu=6

# ode20_step10_tau0.005_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=10 task.likelihood_estimator_config.lr=7.5e-07 task.likelihood_estimator_config.ode_step=20 task.likelihood_estimator_config.tau=0.005 name=ode20_step10_tau0.005_alpha0.03 +seed=42 gpu=6

# ode20_step10_tau0.001_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=10 task.likelihood_estimator_config.lr=3e-08 task.likelihood_estimator_config.ode_step=20 task.likelihood_estimator_config.tau=0.001 name=ode20_step10_tau0.001_alpha0.03 +seed=42 gpu=6

# ode10_step10_tau0.03_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=10 task.likelihood_estimator_config.lr=2.7e-05 task.likelihood_estimator_config.ode_step=10 task.likelihood_estimator_config.tau=0.03 name=ode10_step10_tau0.03_alpha0.03 +seed=42 gpu=6

# ode10_step10_tau0.005_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=10 task.likelihood_estimator_config.lr=7.5e-07 task.likelihood_estimator_config.ode_step=10 task.likelihood_estimator_config.tau=0.005 name=ode10_step10_tau0.005_alpha0.03 +seed=42 gpu=6

# ode10_step10_tau0.001_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=10 task.likelihood_estimator_config.lr=3e-08 task.likelihood_estimator_config.ode_step=10 task.likelihood_estimator_config.tau=0.001 name=ode10_step10_tau0.001_alpha0.03 +seed=42 gpu=6

# ode3_step10_tau0.03_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=10 task.likelihood_estimator_config.lr=2.7e-05 task.likelihood_estimator_config.ode_step=3 task.likelihood_estimator_config.tau=0.03 name=ode3_step10_tau0.03_alpha0.03 +seed=42 gpu=6

# ode3_step10_tau0.005_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=10 task.likelihood_estimator_config.lr=7.5e-07 task.likelihood_estimator_config.ode_step=3 task.likelihood_estimator_config.tau=0.005 name=ode3_step10_tau0.005_alpha0.03 +seed=42 gpu=6

# ode3_step10_tau0.001_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=10 task.likelihood_estimator_config.lr=3e-08 task.likelihood_estimator_config.ode_step=3 task.likelihood_estimator_config.tau=0.001 name=ode3_step10_tau0.001_alpha0.03 +seed=42 gpu=6

# ode1_step10_tau0.03_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=10 task.likelihood_estimator_config.lr=2.7e-05 task.likelihood_estimator_config.ode_step=1 task.likelihood_estimator_config.tau=0.03 name=ode1_step10_tau0.03_alpha0.03 +seed=42 gpu=6

# ode1_step10_tau0.005_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=10 task.likelihood_estimator_config.lr=7.5e-07 task.likelihood_estimator_config.ode_step=1 task.likelihood_estimator_config.tau=0.005 name=ode1_step10_tau0.005_alpha0.03 +seed=42 gpu=6

# ode1_step10_tau0.001_alpha0.03
python posterior_sample.py +data=ffhq +model=ffhq256ddpm +sampler=edm_resample +task=phase_retrieval wandb=True data.start_id=980 data.end_id=1000 save_dir=./search_root/phase_retrieval +project_name=phase_trieval_search +num_run=4 task.likelihood_estimator_config.step=10 task.likelihood_estimator_config.lr=3e-08 task.likelihood_estimator_config.ode_step=1 task.likelihood_estimator_config.tau=0.001 name=ode1_step10_tau0.001_alpha0.03 +seed=42 gpu=6

