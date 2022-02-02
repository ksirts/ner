#! /bin/bash

#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --job-name=m56s5490
#SBATCH --mail-type=ALL
#SBATCH --time 1-00:00:00
#SBATCH --mem=20000
#SBATCH --output=R-%x.%j.out

module load python/3.8.6
source venv/bin/activate

wandb login
WANDB_PROJECT=EstNewNER

CONFIG_PATH=config/config_ner_main_lr5e-6_s5490.json

python run_ner_main.py $CONFIG_PATH