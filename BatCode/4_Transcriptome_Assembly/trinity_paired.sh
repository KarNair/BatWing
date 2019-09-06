#!/bin/bash
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J trinity_paired
#SBATCH --mail-type=ALL
#SBATCH --mail-user karthik.nair.7680@student.uu.se

# Load modules
module load bioinfo-tools
module load trinity/2.8.2
module load samtools/1.9
module load jellyfish/2.2.6
module load Salmon/0.9.1
module load bowtie2/2.3.4.3

Trinity --seqType fq --max_memory 10G \
--left \
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719013.trim_1P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719014.trim_1P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719015.trim_1P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719016.trim_1P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719017.trim_1P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719018.trim_1P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719204.trim_1P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719206.trim_1P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719207.trim_1P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719208.trim_1P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719209.trim_1P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719211.trim_1P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719212.trim_1P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719213.trim_1P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719214.trim_1P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719241.trim_1P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719242.trim_1P.fastq.gz \
--right \
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719013.trim_2P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719014.trim_2P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719015.trim_2P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719016.trim_2P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719017.trim_2P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719018.trim_2P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719204.trim_2P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719206.trim_2P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719207.trim_2P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719208.trim_2P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719209.trim_2P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719211.trim_2P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719212.trim_2P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719213.trim_2P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719214.trim_2P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719241.trim_2P.fastq.gz,\
/home/karnair/GenomeAnalysis/BatWing/Data/raw_data/rna_seq/trimmed/sel3_SRR1719242.trim_2P.fastq.gz \
--output /home/karnair/GenomeAnalysis/BatWing/results/4_Transcriptome_Assembly/trinity_paired
