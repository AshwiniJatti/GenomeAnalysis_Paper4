#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 1:00:00
#SBATCH -J repeatMasker_soft
#SBATCH --mail-type=ALL
#SBATCH --mail-user ashwini.jatti.4265@student.uu.se

#modules
module load bioinfo-tools
module load RepeatMasker/4.1.2-p1

#commands
RepeatMasker --species arabidopsis /home/ashwi/genome_analysis/data/analyses/pilon/pilon_correction.fasta \
 -dir /home/ashwi/genome_analysis/data/analyses/soft_mask -xsmall 
