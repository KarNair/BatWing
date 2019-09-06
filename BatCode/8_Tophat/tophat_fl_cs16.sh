#!/bin/bash
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J forelimb_cs16
#SBATCH --mail-type=ALL
#SBATCH --mail-user karthik.nair.7680@student.uu.se

### Load modules
module load bioinfo-tools
module load tophat

### Your commands
tophat -o /home/karnair/GenomeAnalysis/BatWing/results/8_Tophat/forelimb/cs16 \
/home/karnair/GenomeAnalysis/BatWing/results/7_Bowtie/ref \
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719204.trim_1P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719206.trim_1P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719207.trim_1P.fastq.gz \
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719204.trim_2P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719206.trim_2P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719207.trim_2P.fastq.gz
