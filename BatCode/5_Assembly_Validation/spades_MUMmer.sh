#!/bin/bash

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 24:00:00
#SBATCH -J spades_validation_wgs
#SBATCH --mail-type=ALL
#SBATCH --mail-user karthik.nair.7680@student.uu.se

# Load modules
module load bioinfo-tools
module load MUMmer

# Your commands
nucmer --prefix /home/karnair/GenomeAnalysis/BatWing/results/5_Assembly_Validation/spades/spades \
/home/karnair/GenomeAnalysis/BatWing/Data/ref_genome_unzipped.fasta \
/home/karnair/GenomeAnalysis/BatWing/results/3_Genome_Assembly/SPAdes/scaffolds.fasta

mummerplot -x "[0,4000000]" -y "[0,4000000]" --png --layout --filter -p \
nucmer --prefix /home/karnair/GenomeAnalysis/BatWing/results/5_Assembly_Validation/spades/spades \
nucmer --prefix /home/karnair/GenomeAnalysis/BatWing/results/5_Assembly_Validation/spades/spades.delta \
-R /home/karnair/GenomeAnalysis/BatWing/Data/ref_genome_unzipped.fasta \
-Q /home/karnair/GenomeAnalysis/BatWing/results/3_Genome_Assembly/SPAdes/scaffolds.fasta
