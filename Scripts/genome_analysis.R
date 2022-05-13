

#loading libraries
library(DESeq2)
library(tidyverse)
library(pheatmap)
library(gplots)
library(RColorBrewer)
library(genefilter)

# Read in files
sampleFiles <- c("RNA_Counts/counts_92.txt",
                 "RNA_Counts/counts_93.txt",
                 "RNA_Counts/counts_96.txt",
                 "RNA_Counts/counts_97.txt")
sampleNames <- c("MSK_leaf","MSK_root","MSK_stem","MSK_aril")
SampleCondition <- c("non_fruit", "non_fruit","non_fruit","fruit")
sampleTable <- data.frame(sampleName = sampleNames, fileName = sampleFiles, condition = SampleCondition)
treatments = c("fruit", "Non-fruit")

ddsHTSeq <- DESeqDataSetFromHTSeqCount(sampleTable = sampleTable,
                                       design = ~ condition)
colData(ddsHTSeq)$condition <- factor(colData(ddsHTSeq)$condition,
                                      levels = treatments)

#differential expression
dds <- DESeq(ddsHTSeq)
res <- results(dds)

# Order result based on adjusted p-value.
head(res)
summary(res)
resOrdered <- res[order(res$padj),]  #order by padj(adjusted p-value), small padj indicates large difference
sub_res <- subset(resOrdered, padj <0.01)
resOrdered=as.data.frame(resOrdered)
head(resOrdered)
resOrdered=na.omit(resOrdered)  #delete NA values
write.csv(as.data.frame(resOrdered),file="resOrdered_1.csv")
write.csv(as.data.frame(sub_res),file="resOrdered_sub_1.csv")


# Perform PCA to determine if there is difference in expression in fruit vs. non-fruit in Masang King(MSK)
rld<-rlog(dds)
colData(dds)
plotPCA(rld,intgroup=c("condition","sizeFactor"))

#MA plot
res <- results(dds)
plotMA(res)
plotMA(sub_res)

# heatmap of the result
select<-order(rowMeans(counts(dds,normalized=TRUE)),decreasing = TRUE)[1:1046] 
nt<-normTransform(dds)
log2.norm.counts<-assay(nt)[select,]
df<-as.data.frame(colData(dds))
pheatmap(log2.norm.counts,cluster_rows = TRUE,show_rownames = FALSE,cluster_cols = TRUE,annotation_col = df)



# Single out top 10 genes displaying the largest variance.
topVarGenes <- head( order( rowVars( assay(rld) ), decreasing=TRUE ), 10 )
heatmap.2( assay(rld)[ topVarGenes, ], scale="row",
           trace="none", dendrogram="column",
           col = colorRampPalette( rev(brewer.pal(9, "RdBu")) )(255), margins=c(1,8))


