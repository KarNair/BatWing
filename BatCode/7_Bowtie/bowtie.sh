#!/bin/bash
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J bowtie_build
#SBATCH --mail-type=ALL
#SBATCH --mail-user karthik.nair.7680@student.uu.se

### Load modules
module load bioinfo-tools
module load tophat

### Your commands
bowtie2-build -f \
/home/karnair/GenomeAnalysis/BatWing/Data/ref_genome_unzipped.fasta \
/home/karnair/GenomeAnalysis/BatWing/results/7_Bowtie/ref
