#!/bin/bash
#
#SBATCH --job-name=df_full_datacube_fast_opt3
#SBATCH --output=df_full_datacube_fast_opt3.log

#SBATCH --time=5:00:00
#SBATCH --mem=60g
#SBATCH --cpus-per-task=5

export MPLBACKEND=agg
conda activate dfisher_2023b_light
cd /fred/oz088/ADACS_dev/DFisher_2023B/input

python eso120_thread_runner_fast_nelder.py
