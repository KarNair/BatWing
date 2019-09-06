#!/bin/bash 
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 6
#SBATCH -t 200:00:00
#SBATCH -J run_blast
#SBATCH --mail-type=ALL
#SBATCH --mail-user karthik.nair.7680@student.uu.se

module load bioinfo-tools blast

cat genome_oneline.txt | awk '{print substr($0,1049800,5399)}' > temp.txt
blastn -db nt -query temp.txt -out gene1.out
cat genome_oneline.txt | awk '{print substr($0,1272675,589)}' > temp.txt
blastn -db nt -query temp.txt -out gene2.out
cat genome_oneline.txt | awk '{print substr($0,1289342,13011)}' > temp.txt
blastn -db nt -query temp.txt -out gene3.out
cat genome_oneline.txt | awk '{print substr($0,1591864,4908)}' > temp.txt
blastn -db nt -query temp.txt -out gene4.out
cat genome_oneline.txt | awk '{print substr($0,1612943,12040)}' > temp.txt
blastn -db nt -query temp.txt -out gene5.out
cat genome_oneline.txt | awk '{print substr($0,1697831,6576)}' > temp.txt
blastn -db nt -query temp.txt -out gene6.out
cat genome_oneline.txt | awk '{print substr($0,1748873,40886)}' > temp.txt
blastn -db nt -query temp.txt -out gene7.out
cat genome_oneline.txt | awk '{print substr($0,1793252,9752)}' > temp.txt
blastn -db nt -query temp.txt -out gene8.out
cat genome_oneline.txt | awk '{print substr($0,1807410,48635)}' > temp.txt
blastn -db nt -query temp.txt -out gene9.out
cat genome_oneline.txt | awk '{print substr($0,1889868,26390)}' > temp.txt
blastn -db nt -query temp.txt -out gene10.out
cat genome_oneline.txt | awk '{print substr($0,1929653,24732)}' > temp.txt
blastn -db nt -query temp.txt -out gene11.out
cat genome_oneline.txt | awk '{print substr($0,2060933,6742)}' > temp.txt
blastn -db nt -query temp.txt -out gene12.out
cat genome_oneline.txt | awk '{print substr($0,2085965,5409)}' > temp.txt
blastn -db nt -query temp.txt -out gene13.out
cat genome_oneline.txt | awk '{print substr($0,2097111,19796)}' > temp.txt
blastn -db nt -query temp.txt -out gene14.out
cat genome_oneline.txt | awk '{print substr($0,2075571,7738)}' > temp.txt
blastn -db nt -query temp.txt -out gene15.out
cat genome_oneline.txt | awk '{print substr($0,2178656,12404)}' > temp.txt
blastn -db nt -query temp.txt -out gene16.out
cat genome_oneline.txt | awk '{print substr($0,2235022,1580)}' > temp.txt
blastn -db nt -query temp.txt -out gene17.out
cat genome_oneline.txt | awk '{print substr($0,2208922,22715)}' > temp.txt
blastn -db nt -query temp.txt -out gene18.out
cat genome_oneline.txt | awk '{print substr($0,2348553,15783)}' > temp.txt
blastn -db nt -query temp.txt -out gene19.out
cat genome_oneline.txt | awk '{print substr($0,2366890,14226)}' > temp.txt
blastn -db nt -query temp.txt -out gene20.out
cat genome_oneline.txt | awk '{print substr($0,3048094,2934)}' > temp.txt
blastn -db nt -query temp.txt -out gene21.out
cat genome_oneline.txt | awk '{print substr($0,3027122,4995)}' > temp.txt
blastn -db nt -query temp.txt -out gene22.out
cat genome_oneline.txt | awk '{print substr($0,3130839,40817)}' > temp.txt
blastn -db nt -query temp.txt -out gene23.out
cat genome_oneline.txt | awk '{print substr($0,3127477,2874)}' > temp.txt
blastn -db nt -query temp.txt -out gene24.out
cat genome_oneline.txt | awk '{print substr($0,3251801,8910)}' > temp.txt
blastn -db nt -query temp.txt -out gene25.out
cat genome_oneline.txt | awk '{print substr($0,3347087,3203)}' > temp.txt
blastn -db nt -query temp.txt -out gene26.out
cat genome_oneline.txt | awk '{print substr($0,3279526,27881)}' > temp.txt
blastn -db nt -query temp.txt -out gene27.out
cat genome_oneline.txt | awk '{print substr($0,545141,36927)}' > temp.txt
blastn -db nt -query temp.txt -out gene28.out
cat genome_oneline.txt | awk '{print substr($0,646125,20132)}' > temp.txt
blastn -db nt -query temp.txt -out gene29.out
cat genome_oneline.txt | awk '{print substr($0,759628,11386)}' > temp.txt
blastn -db nt -query temp.txt -out gene30.out
cat genome_oneline.txt | awk '{print substr($0,860576,18447)}' > temp.txt
blastn -db nt -query temp.txt -out gene31.out
cat genome_oneline.txt | awk '{print substr($0,1625686,70082)}' > temp.txt
blastn -db nt -query temp.txt -out gene32.out
cat genome_oneline.txt | awk '{print substr($0,3318069,5461)}' > temp.txt
blastn -db nt -query temp.txt -out gene33.out
cat genome_oneline.txt | awk '{print substr($0,3315255,2375)}' > temp.txt
blastn -db nt -query temp.txt -out gene34.out
cat genome_oneline.txt | awk '{print substr($0,823406,14895)}' > temp.txt
blastn -db nt -query temp.txt -out gene35.out
