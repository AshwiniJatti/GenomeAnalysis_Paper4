#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 20:00:00
#SBATCH -J pilon_correction
#SBATCH --mail-type=ALL
#SBATCH --mail-user ashwini.jatti.4265@student.uu.se

#modules
module load bioinfo-tools
module load samtools
module load Pilon

#commands
samtools view -Sb /home/ashwi/genome_analysis/data/analyses/bwa/bwa_res.sam > /home/ashwi/genome_analysis/data/analyses/bwa/bwa_res.bam
samtools sort /home/ashwi/genome_analysis/data/analyses/bwa/bwa_res.bam -o /home/ashwi/genome_analysis/data/analyses/bwa/bwa_res.sorted.bam
samtools index -@ 10 /home/ashwi/genome_analysis/data/analyses/bwa/bwa_res.sorted.bam

java -jar $PILON_HOME/pilon.jar --genome /home/ashwi/genome_analysis/data/analyses/01_assemblyDNA/durian_pacbio_11_27m/durian_pacbio_assembly_11_27m.contigs.fasta --bam /home/ashwi/genome_analysis/data/analyses/bwa/bwa_res.sorted.bam --output pilon_correction --outdir /home/ashwi/genome_analysis/data/analyses/pilon --diploid --threads 4
