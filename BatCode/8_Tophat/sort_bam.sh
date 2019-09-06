#!/bin/bash
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:05:00
#SBATCH -J sorting_bam
#SBATCH --mail-type=ALL
#SBATCH --mail-user karthik.nair.7680@student.uu.se

# Load modules
module load bioinfo-tools
module load samtools

# sort the bams
samtools sort -n /home/karnair/GenomeAnalysis/BatWing/results/8_Tophat/forelimb/cs15/accepted_hits.bam \
> /home/karnair/GenomeAnalysis/BatWing/results/9_Differential_Expression/forelimb_cs15.bam
samtools sort -n /home/karnair/GenomeAnalysis/BatWing/results/8_Tophat/forelimb/cs16/accepted_hits.bam \
> /home/karnair/GenomeAnalysis/BatWing/results/9_Differential_Expression/forelimb_cs16.bam
samtools sort -n /home/karnair/GenomeAnalysis/BatWing/results/8_Tophat/forelimb/cs17/accepted_hits.bam \
> /home/karnair/GenomeAnalysis/BatWing/results/9_Differential_Expression/forelimb_cs17.bam
samtools sort -n /home/karnair/GenomeAnalysis/BatWing/results/8_Tophat/hindlimb/cs15/accepted_hits.bam \
> /home/karnair/GenomeAnalysis/BatWing/results/9_Differential_Expression/hindlimb_cs15.bam
samtools sort -n /home/karnair/GenomeAnalysis/BatWing/results/8_Tophat/hindlimb/cs16/accepted_hits.bam \
> /home/karnair/GenomeAnalysis/BatWing/results/9_Differential_Expression/hindlimb_cs16.bam
samtools sort -n /home/karnair/GenomeAnalysis/BatWing/results/8_Tophat/hindlimb/cs17/accepted_hits.bam \
> /home/karnair/GenomeAnalysis/BatWing/results/9_Differential_Expression/hindlimb_cs17.bam
