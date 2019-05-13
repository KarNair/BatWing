#!/bin/bash -L
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:05:00
#SBATCH -J run_fastqc
#SBATCH --mail-type=ALL
#SBATCH --mail-user karthik.nair1194@gmail.com
# Load modules
module load bioinfo-tools
module load FastQC/0.11.5
# Your commands
for filename in  /home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/raw/*.fastq.gz
    do
        fastqc $filename -o /home/karnair/GenomeAnalysis/BatWing/results;
done