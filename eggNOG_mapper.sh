#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J functional_annotation
#SBATCH --mail-type=ALL
#SBATCH --mail-user ashwini.jatti.4265@student.uu.se

#modules
module load bioinfo-tools
module load eggNOG-mapper

#commands

emapper.py -i /home/ashwi/genome_analysis/data/analyses/soft_mask/pilon_correction.fasta.masked --itype genome \
 -o /home/ashwi/genome_analysis/data/analyses/eggNOG_mapper --cpu 2
