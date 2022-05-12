#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 15:00:00
#SBATCH -J trinity
#SBATCH --mail-type=ALL
#SBATCH --mail-user ashwini.jatti.4265@student.uu.se

#modules
module load bioinfo-tools
module load samtools
module load trinity/2.4.0

#commands
Trinity --genome_guided_bam /home/ashwi/genome_analysis/data/analyses/merged.bam \
 --max_memory 50G --genome_guided_max_intron 10000 --CPU 8 --output /home/ashwi/genome_analysis/data/analyses/RNA_assembly/trinity_out


 
