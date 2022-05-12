#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 10:00
#SBATCH -J dna_assembly_CANU_11
#SBATCH --mail-type=ALL
#SBATCH --mail-user ashwini.jatti.4265@student.uu.se

module load bioinfo-tools
module load trimmomatic/0.39

java -jar /sw/bioinfo/trimmomatic/0.39/rackham/trimmomatic.jar PE \
/home/ashwi/genome_analysis/data/raw_data/transcriptome/untrimmed/SRR6040095_scaffold_11.1.fastq.gz \
/home/ashwi/genome_analysis/data/raw_data/transcriptome/untrimmed/SRR6040095_scaffold_11.2.fastq.gz \
/home/ashwi/genome_analysis/data/analyses/trimmomatic/trimmed_1_paired.fq.gz \
/home/ashwi/genome_analysis/data/analyses/trimmomatic/trimmed_1_unpaired.fq.gz \
/home/ashwi/genome_analysis/data/analyses/trimmomatic/trimmed_2_paired.fq.gz \
/home/ashwi/genome_analysis/data/analyses/trimmomatic/trimmed_2_unpaired.fq.gz \
LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36 
