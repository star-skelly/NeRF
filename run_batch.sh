#!/bin/bash
#SBATCH --job-name=fine_render
#SBATCH --mail-user=loucks@umich.edu
#SBATCH --mail-type=BEGIN,END
#SBATCH --cpus-per-task=8
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem-per-cpu=5000m
#SBATCH --time=01:20:00
#SBATCH --account=eecs542f25_class
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --output=hw4_fine.log

echo "starting"
conda activate nerf
python run_nerf.py --config configs/lego_fine.txt
