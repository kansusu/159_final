#!/bin/bash
#SBATCH --job-name=0
#SBATCH --output=log/training_record_3.txt
#SBATCH --account=guest
#SBATCH --partition=guest-gpu
#SBATCH --qos=low-gpu
#SBATCH --gres=gpu:V100:1   # Request 1 TitanX GPU

# Load modules required for your job
module load cuda/10.2

# Path to your executable
python run.py --dataset 3 --devices 0 --print_num 100 --test_time 5
