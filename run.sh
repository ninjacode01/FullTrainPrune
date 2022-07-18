#!/bin/bash
#SBATCH --nodes=1
#SBATCH -A hai_lt_prune
#SBATCH --partition booster
#SBATCH --gres gpu
#SBATCH --time=24:00:00
#SBATCH -o output_mag_0.1.txt
#SBATCH -e error_mag_0.1.txt
srun python3 main.py --expid 'impMS01' --experiment 'multishot' --model 'resnet18' --dataset 'cifar10' --pre-epochs 30 --post-epochs 160 --pruner 'mag'
