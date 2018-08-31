#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=2
#SBATCH --mem=90GB

#SBATCH --gres=gpu:p100:1

#SBATCH --time=24:00:00
#SBATCH --job-name=reuters
#SBATCH --mail-type=END
#SBATCH --mail-user=jo1443@nyu.edu
#SBATCH --output=reuters-3.out

module load python3/intel/3.6.3

srun --x11 python run.py --gpu=1 --dset=reuters




