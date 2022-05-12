#!/bin/sh
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:10:00
#SBATCH -J fastQC
#SBATCH --mail-type=ALL
#SBATCH --mail-user ashwini.jatti.4265@student.uu.se


module load bioinfo-tools
module load FastQC

for filename in /home/ashwi/genome_analysis/data/raw_data/illumina_data/*.fastq.gz
    do
        fastqc $filename -o /home/ashwi/genome_analysis/data/analyses/fastQC/;
done
