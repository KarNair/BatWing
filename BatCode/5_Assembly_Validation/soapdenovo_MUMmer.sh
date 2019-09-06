#!/bin/bash 
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 48:00:00
#SBATCH -J soapdenovo_MUMmer
#SBATCH --mail-type=ALL
#SBATCH --mail-user karthik.nair.7680@student.uu.se

# Load modules
module load bioinfo-tools
module load MUMmer

# Your commands
nucmer --prefix /home/karnair/GenomeAnalysis/BatWing/results/5_Assembly_Validation/soapdenovo_wgs/soapdenovo \
/home/karnair/GenomeAnalysis/BatWing/Data/ref_genome_unzipped.fasta \
/home/karnair/GenomeAnalysis/BatWing/results/3_Genome_Assembly/SOAPdenovo/GapCloser_output.fasta

mummerplot -x "[0,4000000]" -y "[0,4000000]" --png --layout --filter -p \
/home/karnair/GenomeAnalysis/BatWing/results/5_Assembly_Validation/soapdenovo_wgs/soapdenovo \
/home/karnair/GenomeAnalysis/BatWing/results/5_Assembly_Validation/soapdenovo_wgs/soapdenovo.delta \
-R /home/karnair/GenomeAnalysis/BatWing/Data/ref_genome_unzipped.fasta \
-Q /home/karnair/GenomeAnalysis/BatWing/results/3_Genome_Assembly/SOAPdenovo/GapCloser_output.fasta
