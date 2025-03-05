#!/bin/bash
#SBATCH -p gpu_test
#SBATCH -c 4 # number of cores
#SBATCH --mem=200G # memory pool for all cores
#SBATCH -t 0-12:00 # time (D-HH:MM)
#SBATCH -o o
#SBATCH -e e
#SBATCH --gres=gpu:1

python main_operator.py
