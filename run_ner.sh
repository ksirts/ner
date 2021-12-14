#! /bin/bash

#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --job-name=estner
#SBATCH --mail-type=ALL
#SBATCH --time 1-00:00:00
#SBATCH --mem=20000
#SBATCH --output=R-%x.%j.out

source $HOME/estbert_venv/bin/activate

module load git-lfs/2.11.0

wandb login
WANDB_PROJECT=EstNewNER

CONFIG_PATH=config/new_ner_config.json

python run_ner.py $CONFIG_PATH