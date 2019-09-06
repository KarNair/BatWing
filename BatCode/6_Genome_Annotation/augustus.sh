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
cd /home/karnair/GenomeAnalysis/BatWing/results/6_Genome_Annotation/ref_genome_unzipped.maker.output

perl randomSplit.pl augustus.gbk 13

etraining --species=human augustus.gbk.train
augustus --species=human augustus.gbk.test | tee first_training.out
