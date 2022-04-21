#!/bin/sh
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:05:00 
#SBATCH -J fastQC
#SBATCH -o fastQC.log
#SBATCH -e fastQC.err


module load bioinfo-tools
module load FastQC

fastqc -o /home/ashwi/genome_analysis/data/analyses/fastQC \
 /home/ashwi/genome_analysis/data/raw_data/transcriptome/untrimmed/SRR6037732_scaffold_06.fq.gz
