#!/bin/bash 
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J hindlimb_cs15
#SBATCH --mail-type=ALL
#SBATCH --mail-user karthik.nair.7680@student.uu.se

### Load modules
module load bioinfo-tools
module load tophat

### Your commands
tophat -o /home/karnair/GenomeAnalysis/BatWing/results/8_Tophat/hindlimb/cs15 \
/home/karnair/GenomeAnalysis/BatWing/results/7_Bowtie/ref \
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719016.trim_1P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719017.trim_1P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719018.trim_1P.fastq.gz \
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719016.trim_2P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719017.trim_2P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719018.trim_2P.fastq.gz
