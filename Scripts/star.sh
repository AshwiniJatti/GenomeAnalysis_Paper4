#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 1:00:00
#SBATCH -J star
#SBATCH --mail-type=ALL
#SBATCH --mail-user ashwini.jatti.4265@student.uu.se

#modules
module load bioinfo-tools
module load star

#commands

STAR --runMode genomeGenerate --genomeDir /home/ashwi/genome_analysis/data/analyses/RNA_assembly/ \
 --genomeFastaFiles /home/ashwi/genome_analysis/data/analyses/RNA_assembly/pilon_corrected.fasta

STAR --genomeDir /home/ashwi/genome_analysis/data/analyses/RNA_assembly/ \
 --readFilesIn /home/ashwi/genome_analysis/data/raw_data/transcriptome/trimmed/SRR6040092_scaffold_11.1.fastq.gz \
 /home/ashwi/genome_analysis/data/raw_data/transcriptome/trimmed/SRR6040092_scaffold_11.2.fastq.gz \
 --readFilesCommand zcat \
 --runThreadN 8 --outSAMtype BAM SortedByCoordinate --outFileNamePrefix /home/ashwi/genome_analysis/data/analyses/SRR6040092

STAR --genomeDir /home/ashwi/genome_analysis/data/analyses/RNA_assembly/ \
 --readFilesIn /home/ashwi/genome_analysis/data/raw_data/transcriptome/trimmed/SRR6040093_scaffold_11.1.fastq.gz \
 /home/ashwi/genome_analysis/data/raw_data/transcriptome/trimmed/SRR6040093_scaffold_11.2.fastq.gz \
 --readFilesCommand zcat \
 --runThreadN 8 --outSAMtype BAM SortedByCoordinate --outFileNamePrefix /home/ashwi/genome_analysis/data/analyses/SRR6040093

STAR --genomeDir /home/ashwi/genome_analysis/data/analyses/RNA_assembly/ \
 --readFilesIn /home/ashwi/genome_analysis/data/raw_data/transcriptome/trimmed/SRR6040094_scaffold_11.1.fastq.gz \
 /home/ashwi/genome_analysis/data/raw_data/transcriptome/trimmed/SRR6040094_scaffold_11.2.fastq.gz \
 --readFilesCommand zcat \
 --runThreadN 8 --outSAMtype BAM SortedByCoordinate --outFileNamePrefix /home/ashwi/genome_analysis/data/analyses/SRR6040094

STAR --genomeDir /home/ashwi/genome_analysis/data/analyses/RNA_assembly/ \
 --readFilesIn /home/ashwi/genome_analysis/data/raw_data/transcriptome/trimmed/SRR6040096_scaffold_11.1.fastq.gz \
 /home/ashwi/genome_analysis/data/raw_data/transcriptome/trimmed/SRR6040096_scaffold_11.2.fastq.gz \
 --readFilesCommand zcat \
 --runThreadN 8 --outSAMtype BAM SortedByCoordinate --outFileNamePrefix /home/ashwi/genome_analysis/data/analyses/SRR6040096

STAR --genomeDir /home/ashwi/genome_analysis/data/analyses/RNA_assembly/ \
 --readFilesIn /home/ashwi/genome_analysis/data/raw_data/transcriptome/trimmed/SRR6040097_scaffold_11.1.fastq.gz \
 /home/ashwi/genome_analysis/data/raw_data/transcriptome/trimmed/SRR6040097_scaffold_11.2.fastq.gz \
 --readFilesCommand zcat \
 --runThreadN 8 --outSAMtype BAM SortedByCoordinate --outFileNamePrefix /home/ashwi/genome_analysis/data/analyses/SRR6040097

STAR --genomeDir /home/ashwi/genome_analysis/data/analyses/RNA_assembly/ \
 --readFilesIn /home/ashwi/genome_analysis/data/raw_data/transcriptome/trimmed/SRR6156066_scaffold_11.1.fastq.gz \
 /home/ashwi/genome_analysis/data/raw_data/transcriptome/trimmed/SRR6156066_scaffold_11.2.fastq.gz \
 --readFilesCommand zcat \
 --runThreadN 8 --outSAMtype BAM SortedByCoordinate --outFileNamePrefix /home/ashwi/genome_analysis/data/analyses/SRR6156066

STAR --genomeDir /home/ashwi/genome_analysis/data/analyses/RNA_assembly/ \
 --readFilesIn /home/ashwi/genome_analysis/data/raw_data/transcriptome/trimmed/SRR6156067_scaffold_11.1.fastq.gz \
 /home/ashwi/genome_analysis/data/raw_data/transcriptome/trimmed/SRR6156067_scaffold_11.2.fastq.gz \
 --readFilesCommand zcat \
 --runThreadN 8 --outSAMtype BAM SortedByCoordinate --outFileNamePrefix /home/ashwi/genome_analysis/data/analyses/SRR6156067

STAR --genomeDir /home/ashwi/genome_analysis/data/analyses/RNA_assembly/ \
 --readFilesIn /home/ashwi/genome_analysis/data/raw_data/transcriptome/trimmed/SRR6156069_scaffold_11.1.fastq.gz \
 /home/ashwi/genome_analysis/data/raw_data/transcriptome/trimmed/SRR6156069_scaffold_11.2.fastq.gz \
 --readFilesCommand zcat \
 --runThreadN 8 --outSAMtype BAM SortedByCoordinate --outFileNamePrefix /home/ashwi/genome_analysis/data/analyses/SRR6156069


