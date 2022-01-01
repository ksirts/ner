#! /bin/bash

#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --job-name=n35s5974
#SBATCH --mail-type=ALL
#SBATCH --time 1-00:00:00
#SBATCH --mem=20000
#SBATCH --output=R-%x.%j.out

module load python/3.8.6
source venv/bin/activate

wandb login
WANDB_PROJECT=EstNewNER

CONFIG_PATH=config/config_ner_new_lr3e-5_s5974.json

python run_ner_main.py $CONFIG_PATH