#!/bin/bash
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:10:00
#SBATCH -J maker2zff
#SBATCH --mail-type=ALL
#SBATCH --mail-user karthik.nair.7680@student.uu.se

# Load modules
module load bioinfo-tools
module load maker


cd /home/karnair/GenomeAnalysis/BatWing/results/6_Genome_Annotation/ref_genome_unzipped.maker.output
#Your command

maker2zff ref_genome_unzipped.all.gff
