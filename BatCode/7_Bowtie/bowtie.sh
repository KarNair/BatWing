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
/home/shsr0481/Genome_Analysis/data/ref_genome_unzipped.fasta \
/home/shsr0481/Genome_Analysis/results/7_Bowtie/ref