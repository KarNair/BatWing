#!/bin/bash
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 02:00:00
#SBATCH -J htseq_differential
#SBATCH --mail-type=ALL
#SBATCH --mail-user karthik.nair.7680@student.uu.se


# Load modules
module load bioinfo-tools
module load htseq

# my .gff file had fasta appended at the end. (fasta started at line 21128)
# remove the fasta part and create a new file:
head -21128 /home/karnair/GenomeAnalysis/BatWing/results/6_Genome_Annotation/ref_genome_unzipped.maker.output/ref_genome_unzipped.all.gff > /home/karnair/GenomeAnalysis/BatWing/results/6_Genome_Annotation/ref_genome_unzipped.maker.output/ref_genome_unzipped_nofasta.all.gff

#Total count
htseq-count -f bam -s no -t gene -i ID /home/karnair/GenomeAnalysis/BatWing/results/8_Tophat/forelimb/cs15/accepted_hits.bam \
/home/karnair/GenomeAnalysis/BatWing/results/8_Tophat/forelimb/cs16/accepted_hits.bam \
/home/karnair/GenomeAnalysis/BatWing/results/8_Tophat/forelimb/cs17/accepted_hits.bam \
/home/karnair/GenomeAnalysis/BatWing/results/8_Tophat/hindlimb/cs15/accepted_hits.bam \
/home/karnair/GenomeAnalysis/BatWing/results/8_Tophat/hindlimb/cs16/accepted_hits.bam \
/home/karnair/GenomeAnalysis/BatWing/results/6_Genome_Annotation/ref_genome_unzipped.maker.output/ref_genome_unzipped_nofasta.all.gff > /home/karnair/GenomeAnalysis/BatWing/results/9_Differential_Expression/htseq_results.txt

# cs15 + forelimb
htseq-count -f bam -s no -t gene -i ID /home/karnair/GenomeAnalysis/BatWing/results/8_Tophat/forelimb/cs15/accepted_hits.bam /home/karnair/GenomeAnalysis/BatWing/results/6_Genome_Annotation/ref_genome_unzipped.maker.output/ref_genome_unzipped_nofasta.all.gff > /home/karnair/GenomeAnalysis/BatWing/results/9_Differential_Expression/cs15_forelimb_htseqresults.txt

# cs15 + hindlimb
htseq-count -f bam -s no -t gene -i ID /home/karnair/GenomeAnalysis/BatWing/results/8_Tophat/hindlimb/cs15/accepted_hits.bam /home/karnair/GenomeAnalysis/BatWing/results/6_Genome_Annotation/ref_genome_unzipped.maker.output/ref_genome_unzipped_nofasta.all.gff > /home/karnair/GenomeAnalysis/BatWing/results/9_Differential_Expression/cs15_hindlimb_htseqresults.txt

# cs16 + forelimb
htseq-count -f bam -s no -t gene -i ID /home/karnair/GenomeAnalysis/BatWing/results/8_Tophat/forelimb/cs16/accepted_hits.bam /home/karnair/GenomeAnalysis/BatWing/results/6_Genome_Annotation/ref_genome_unzipped.maker.output/ref_genome_unzipped_nofasta.all.gff > /home/karnair/GenomeAnalysis/BatWing/results/9_Differential_Expression/cs16_forelimb_htseqresults.txt

# cs16 + hindlimb
htseq-count -f bam -s no -t gene -i ID /home/karnair/GenomeAnalysis/BatWing/results/8_Tophat/hindlimb/cs16/accepted_hits.bam /home/karnair/GenomeAnalysis/BatWing/results/6_Genome_Annotation/ref_genome_unzipped.maker.output/ref_genome_unzipped_nofasta.all.gff > /home/karnair/GenomeAnalysis/BatWing/results/9_Differential_Expression/cs16_hindlimb_htseqresults.txt

# cs17 + forelimb/
htseq-count -f bam -s no -t gene -i ID /home/karnair/GenomeAnalysis/BatWing/results/8_Tophat/forelimb/cs17/accepted_hits.bam /home/karnair/GenomeAnalysis/BatWing/results/6_Genome_Annotation/ref_genome_unzipped.maker.output/ref_genome_unzipped_nofasta.all.gff > /home/karnair/GenomeAnalysis/BatWing/results/9_Differential_Expression/cs17_forelimb_htseqresults.txt
