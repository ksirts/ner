#! /bin/bash

#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --job-name=ner_25e7
#SBATCH --mail-type=ALL
#SBATCH --time 1-00:00:00
#SBATCH --mem=20000
#SBATCH --output=R-%x.%j.out

module load python/3.8.6
source venv/bin/activate

wandb login
WANDB_PROJECT=EstNewNER

CONFIG_PATH=config/ner_config_main_25e-7.json

python run_ner_main.py $CONFIG_PATH