#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 1:00:00
#SBATCH -J bowtie2_onPilon
#SBATCH --mail-type=ALL
#SBATCH --mail-user ashwini.jatti.4265@student.uu.se

#modules
module load bioinfo-tools
module load bowtie2/2.3.5.1

#commands
bowtie2-build /home/ashwi/genome_analysis/data/analyses/bowtie2onPilon/bowtie2onPilon.fasta /home/ashwi/genome_analysis/data/analyses/bowtie2onPilon

