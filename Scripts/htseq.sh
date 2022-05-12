#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 1:00:00
#SBATCH -J gene_counting
#SBATCH --mail-type=ALL
#SBATCH --mail-user ashwini.jatti.4265@student.uu.se

#modules
module load bioinfo-tools
module load htseq
module load samtools

#commands
samtools index /home/ashwi/genome_analysis/data/analyses/star/SRR6040092Aligned.sortedByCoord.out.bam
samtools index /home/ashwi/genome_analysis/data/analyses/star/SRR6040093Aligned.sortedByCoord.out.bam
samtools index /home/ashwi/genome_analysis/data/analyses/star/SRR6040094Aligned.sortedByCoord.out.bam
samtools index /home/ashwi/genome_analysis/data/analyses/star/SRR6040096Aligned.sortedByCoord.out.bam
samtools index /home/ashwi/genome_analysis/data/analyses/star/SRR6040097Aligned.sortedByCoord.out.bam
samtools index /home/ashwi/genome_analysis/data/analyses/star/SRR6156066Aligned.sortedByCoord.out.bam
samtools index /home/ashwi/genome_analysis/data/analyses/star/SRR6156067Aligned.sortedByCoord.out.bam
samtools index /home/ashwi/genome_analysis/data/analyses/star/SRR6156069Aligned.sortedByCoord.out.bam

python -m HTSeq.scripts.count -r pos --stranded=no -t exon -i ID \
 /home/ashwi/genome_analysis/data/analyses/star/SRR6040092Aligned.sortedByCoord.out.bam \
 /home/ashwi/genome_analysis/data/scripts/braker/reference/augustus.hints.gff3 > /home/ashwi/genome_analysis/data/analyses/htseq/counts_92.txt

python -m HTSeq.scripts.count -r pos --stranded=no -t exon -i ID \
 /home/ashwi/genome_analysis/data/analyses/star/SRR6040093Aligned.sortedByCoord.out.bam \
 /home/ashwi/genome_analysis/data/scripts/braker/reference/augustus.hints.gff3 > /home/ashwi/genome_analysis/data/analyses/htseq/counts_93.txt

python -m HTSeq.scripts.count -r pos --stranded=no -t exon -i ID \
 /home/ashwi/genome_analysis/data/analyses/star/SRR6040094Aligned.sortedByCoord.out.bam \
 /home/ashwi/genome_analysis/data/scripts/braker/reference/augustus.hints.gff3 > /home/ashwi/genome_analysis/data/analyses/htseq/counts_94.txt

python -m HTSeq.scripts.count -r pos --stranded=no -t exon -i ID \
 /home/ashwi/genome_analysis/data/analyses/star/SRR6040096Aligned.sortedByCoord.out.bam \
 /home/ashwi/genome_analysis/data/scripts/braker/reference/augustus.hints.gff3 > /home/ashwi/genome_analysis/data/analyses/htseq/counts_96.txt

python -m HTSeq.scripts.count -r pos --stranded=no -t exon -i ID \
 /home/ashwi/genome_analysis/data/analyses/star/SRR6040097Aligned.sortedByCoord.out.bam \
 /home/ashwi/genome_analysis/data/scripts/braker/reference/augustus.hints.gff3 > /home/ashwi/genome_analysis/data/analyses/htseq/counts_97.txt

python -m HTSeq.scripts.count -r pos --stranded=no -t exon -i ID \
 /home/ashwi/genome_analysis/data/analyses/star/SRR6156066Aligned.sortedByCoord.out.bam \
 /home/ashwi/genome_analysis/data/scripts/braker/reference/augustus.hints.gff3 > /home/ashwi/genome_analysis/data/analyses/htseq/counts_66.txt

python -m HTSeq.scripts.count -r pos --stranded=no -t exon -i ID \
 /home/ashwi/genome_analysis/data/analyses/star/SRR6156067Aligned.sortedByCoord.out.bam \
 /home/ashwi/genome_analysis/data/scripts/braker/reference/augustus.hints.gff3 > /home/ashwi/genome_analysis/data/analyses/htseq/counts_67.txt

python -m HTSeq.scripts.count -r pos --stranded=no -t exon -i ID \
 /home/ashwi/genome_analysis/data/analyses/star/SRR6156069Aligned.sortedByCoord.out.bam \
 /home/ashwi/genome_analysis/data/scripts/braker/reference/augustus.hints.gff3 > /home/ashwi/genome_analysis/data/analyses/htseq/counts_69.txt
 
