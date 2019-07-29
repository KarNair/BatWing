#!/bin/bash
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:05:00
#SBATCH -J fastqc_checker
#SBATCH --mail-type=ALL
#SBATCH --mail-user karthik.nair.7680@student.uu.se
#Modules
module load bioinfo-tools
module load FastQC/0.11.5

#Your commands
for filename in /home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/*.fastq.gz
do
	echo "Running $filename ..."
	fastqc -o /home/karnair/GenomeAnalysis/BatWing/results/1_Qualitycontrol_RNA/rnaseq_fastqc/trimmed "$filename"
done