#!/bin/bash
#PBS -N era5_crop
#PBS -A P93300313
#PBS -j oe
#PBS -m abe
#PBS -q main
#PBS -l walltime=04:00:00
#PBS -l select=1:ncpus=1:mem=64GB

module load conda
conda activate /glade/u/home/acruz/.conda/envs/Caribe_Heat_AN_2026

jupyter nbconvert --to notebook --execute --inplace ERA5_pre.ipynb