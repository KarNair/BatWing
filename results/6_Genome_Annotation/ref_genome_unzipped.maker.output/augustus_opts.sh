#!/bin/bash
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 01:00:00
#SBATCH -J Augustus
#SBATCH --mail-type=ALL
#SBATCH --mail-user karthik.nair.7680@student.uu.se

# Load modules
module load bioinfo-tools
module load maker
module load augustus

#Your commands

optimize_augustus.pl --species=human augustus.gbk.train --AUGUSTUS_CONFIG_PATH=config
