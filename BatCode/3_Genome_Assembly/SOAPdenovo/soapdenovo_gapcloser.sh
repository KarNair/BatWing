#!/bin/bash
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 200:00:00
#SBATCH -J gapcloser_SOAPdenovo
#SBATCH --mail-type=ALL
#SBATCH --mail-user karthik.nair.0481@student.uu.se
#Load Modules
module load bioinfo-tools
module load soapdenovo/2.04-r240

# command
GapCloser -b /home/karnair/GenomeAnalysis/BatWing/BatCode/3_Genome_Assembly/soapdenovo_config.txt \
-a /home/karnair/GenomeAnalysis/BatWing/results/3_Genome_Assembly/SOAPdenovo/output.scafSeq \
-o /home/karnair/GenomeAnalysis/BatWing/results/3_Genome_Assembly/SOAPdenovo/GapCloser_output.fasta	

