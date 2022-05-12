#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 2:00:00
#SBATCH -J bwa_alignment
#SBATCH --mail-type=ALL
#SBATCH --mail-user ashwini.jatti.4265@student.uu.se

#modules
module load bioinfo-tools
module load bwa/0.7.17

#commands
bwa index /home/ashwi/genome_analysis/data/analyses/01_assemblyDNA/durian_pacbio_11_27m/durian_pacbio_assembly_11_27m.contigs.fasta
bwa mem /home/ashwi/genome_analysis/data/analyses/01_assemblyDNA/durian_pacbio_11_27m/durian_pacbio_assembly_11_27m.contigs.fasta \
/home/ashwi/genome_analysis/data/raw_data/illumina_data/SRR6058604_scaffold_11.1P.fastq.gz \
/home/ashwi/genome_analysis/data/raw_data/illumina_data/SRR6058604_scaffold_11.2P.fastq.gz \
> /home/ashwi/genome_analysis/data/analyses/bwa/bwa_res.sam


