#!/bin/bash

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J soapdenovo_dna_assembly_wgs
#SBATCH --mail-type=ALL
#SBATCH --mail-user karthik.nair.7680@student.uu.se
#Modules
module load bioinfo-tools
module load soapdenovo

#Your commands
/sw/bioinfo/SOAPdenovo/2.04-r240/rackham/bin/SOAPdenovo-63mer all \
-s //home/karnair/GenomeAnalysis/BatWing/BatCode/3_Genome_Assembly/soapdenovo_config.txt \
-K 49 \
-o /home/karnair/GenomeAnalysis/BatWing/results/3_Genome_Assembly/SOAPdenovo/