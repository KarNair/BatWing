#!/bin/bash
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:10:00
#SBATCH -J snap_error
#SBATCH --mail-type=ALL
#SBATCH --mail-user karthik.nair.7680@student.uu.se

# Load modules
module load bioinfo-tools
module load snap/2013-11-29

cd /home/karnair/GenomeAnalysis/BatWing/results/6_Genome_Annotation/ref_genome_unzipped.maker.output
#Your command

fathom genome.ann genome.dna -validate > snap_validate_output.txt
