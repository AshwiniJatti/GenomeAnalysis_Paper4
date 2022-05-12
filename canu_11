#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 17:00:00
#SBATCH -J dna_assembly_CANU_11
#SBATCH --mail-type=ALL
#SBATCH --mail-user ashwini.jatti.4265@student.uu.se

module load bioinfo-tools
module load canu

canu \
 -p durian_pacbio_assembly_11_27m -d /home/ashwi/genome_analysis/data/analyses/01_assemblyDNA/durian_pacbio_11_27m \
 genomeSize=27m \
 useGrid=false \
 -pacbio-raw /home/ashwi/genome_analysis/data/raw_data/pacbio_data/SRR6037732_scaffold_11.fq.gz
