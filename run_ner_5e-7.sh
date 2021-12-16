#! /bin/bash

#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --job-name=ner_5e-7
#SBATCH --mail-type=ALL
#SBATCH --time 1-00:00:00
#SBATCH --mem=20000
#SBATCH --output=R-%x.%j.out

source venv/bin/activate

wandb login
WANDB_PROJECT=EstNewNER


CONFIG_PATH=config/new_ner_config_5e-7.json

python run_ner.py $CONFIG_PATH