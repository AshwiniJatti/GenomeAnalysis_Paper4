#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 5:00:00
#SBATCH -J quast
#SBATCH --mail-type=ALL
#SBATCH --mail-user ashwini.jatti.4265@student.uu.se

#modules
module load bioinfo-tools
module load quast

#commands
quast.py \
 -o /home/ashwi/genome_analysis/data/analyses/quast/QuastOnCanu \
 /home/ashwi/genome_analysis/data/analyses/01_assemblyDNA/durian_pacbio_11_27m/durian_pacbio_assembly_11_27m.contigs.fasta


quast.py \
 -o /home/ashwi/genome_analysis/data/analyses/quast/QuastOnPilon \
 /home/ashwi/genome_analysis/data/analyses/pilon/pilon_correction.fasta

quast.py \
 -o /home/ashwi/genome_analysis/data/analyses/quast/QuastOnPilon_ref_CANU \
 /home/ashwi/genome_analysis/data/analyses/01_assemblyDNA/durian_pacbio_11_27m/durian_pacbio_assembly_11_27m.contigs.fasta
 /home/ashwi/genome_analysis/data/analyses/pilon/pilon_correction.fasta


quast.py \
 -o /home/ashwi/genome_analysis/data/analyses/quast/QuastOnPilon_ref_ncbi \
 -R /home/ashwi/genome_analysis/data/analyses/sequence.fasta \
 /home/ashwi/genome_analysis/data/analyses/pilon/pilon_correction.fasta

quast.py \
 -o /home/ashwi/genome_analysis/data/analyses/quast/QuastOnCANU_ref_ncbi \
 -R /home/ashwi/genome_analysis/data/analyses/sequence.fasta \
 /home/ashwi/genome_analysis/data/analyses/01_assemblyDNA/durian_pacbio_11_27m/durian_pacbio_assembly_11_27m.contigs.fasta
