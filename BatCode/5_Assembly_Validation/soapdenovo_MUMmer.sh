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
nucmer --prefix /home/shsr0481/GenomeAnalysis/results/5_assembly_validation/soapdenovo_wgs/soapdenovo \
/home/shsr0481/Genome_Analysis/data/ref_genome_unzipped.fasta \
/home/shsr0481/Genome_Analysis/results/3_Genome_Assembly/SOAPdenovo/GapCloser_output.fasta

mummerplot -x "[0,4000000]" -y "[0,4000000]" --png --layout --filter -p \
/home/shsr0481/GenomeAnalysis/results/5_assembly_validation/soapdenovo_wgs/soapdenovo \
/home/shsr0481/GenomeAnalysis/results/5_assembly_validation/soapdenovo_wgs/soapdenovo/soapdenovo.delta \
-R /home/shsr0481/Genome_Analysis/data/ref_genome_unzipped.fasta \
-Q /home/shsr0481/Genome_Analysis/results/3_Genome_Assembly/SOAPdenovo/GapCloser_output.fasta