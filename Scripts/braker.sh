#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 5:00:00
#SBATCH -J annotation
#SBATCH --mail-type=ALL
#SBATCH --mail-user ashwini.jatti.4265@student.uu.se

#modules
module load bioinfo-tools
module load braker/2.1.1_Perl5.24.1
module load augustus/3.2.3_Perl5.24.1
module load bamtools/2.5.1
module load blast/2.9.0+
module load GenomeThreader/1.7.0
module load samtools/1.8
module load GeneMark/4.33-es_Perl5.24.1



#commands
braker.pl --genome=/home/ashwi/genome_analysis/data/analyses/soft_mask/pilon_correction.fasta.masked \
 --bam=/home/ashwi/genome_analysis/data/analyses/merged.bam --softmasking --species=arabidopsis  --useexisting --gff3 --cores=8 \
 --AUGUSTUS_CONFIG_PATH=/home/ashwi/genome_analysis/data/scripts/augustus_config \
 --AUGUSTUS_BIN_PATH=/sw/bioinfo/augustus/3.4.0/snowy/bin \
 --AUGUSTUS_SCRIPTS_PATH=/sw/bioinfo/augustus/3.4.0/snowy/scripts \
 --GENEMARK_PATH=/sw/bioinfo/GeneMark/4.33-es/snowy
