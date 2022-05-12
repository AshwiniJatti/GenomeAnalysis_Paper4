#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 0:15:00
#SBATCH -J bam_merging
#SBATCH --mail-type=ALL
#SBATCH --mail-user ashwini.jatti.4265@student.uu.se

#modules
module load bioinfo-tools
module load samtools

#commands
samtools merge -o /home/ashwi/genome_analysis/data/analyses/merged_bam \
 /home/ashwi/genome_analysis/data/analyses/SRR6040092Aligned.sortedByCoord.out.bam \
 /home/ashwi/genome_analysis/data/analyses/SRR6040093Aligned.sortedByCoord.out.bam \
 /home/ashwi/genome_analysis/data/analyses/SRR6040094Aligned.sortedByCoord.out.bam \
 /home/ashwi/genome_analysis/data/analyses/SRR6040096Aligned.sortedByCoord.out.bam \
 /home/ashwi/genome_analysis/data/analyses/SRR6040097Aligned.sortedByCoord.out.bam \
 /home/ashwi/genome_analysis/data/analyses/SRR6156066Aligned.sortedByCoord.out.bam \
 /home/ashwi/genome_analysis/data/analyses/SRR6156067Aligned.sortedByCoord.out.bam \
 /home/ashwi/genome_analysis/data/analyses/SRR6156069Aligned.sortedByCoord.out.bam 
