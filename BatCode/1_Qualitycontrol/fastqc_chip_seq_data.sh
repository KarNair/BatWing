#!/bin/bash
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J fastqc_chip_seq_data
#SBATCH --mail-type=ALL
#SBATCH --mail-user karthik.nair.7680@student.uu.se
#Modules
module load bioinfo-tools
module load FastQC/0.11.5
#Your commands
for filename in /home/karnair/GenomeAnalysis/BatWing/Data/chip_seq_data/*.fastq.g/z
do
	echo "Running $filename ..."
	fastqc -t 1 -o /home/karnair/GenomeAnalysis/BatWing/results/1_Qualitycontrol_RNA/chip_seq_data "$filename"
done