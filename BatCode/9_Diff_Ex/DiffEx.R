library(data.table)
library(matrixStats)
library(stats)
library(gplots)
library(DESeq2)
library(ggplot2)
library(RColorBrewer)
library(pheatmap)
```

### Read HTSeq data:

cs15_fore <- read.table("/home/karthik/DiffEx/9_Differential_Expression/cs15_forelimb_htseqresults.txt", head=FALSE)
cs15_hind <- read.table("/home/karthik/DiffEx/9_Differential_Expression/cs15_hindlimb_htseqresults.txt", head=FALSE)
cs16_fore <- read.table("/home/karthik/DiffEx/9_Differential_Expression/cs16_forelimb_htseqresults.txt", head=FALSE)
cs16_hind <- read.table("/home/karthik/DiffEx/9_Differential_Expression/cs16_hindlimb_htseqresults.txt", head=FALSE)
cs17_fore <- read.table("/home/karthik/DiffEx/9_Differential_Expression/cs17_forelimb_htseqresults.txt", head=FALSE)




names(cs15_fore)[2] <- "FL_15"
names(cs15_hind)[2] <- "HL_15"
names(cs16_fore)[2] <- "FL_16"
names(cs16_hind)[2] <- "HL_16"
names(cs17_fore)[2] <- "FL_17"


### Merge the data frames

countData <- merge(cs15_fore,cs15_hind,by="V1")
countData <- merge(countData,cs16_fore,by="V1")
countData <- merge(countData,cs16_hind,by="V1")
countData <- merge(countData,cs17_fore,by="V1")

### Rename the first columns

names(countData)[1] <- "Genes"


### Remove extra information
countData <- countData[-c(1,2,3,4,5),]
countData <- data.frame(row.names =countData[,1], FLCS15=countData[2], FLCS16=countData[3], FLCS17=countData[4], HLCS15=countData[5], HLCS16=countData[6])


### to change the gene names

genes_index <- read.csv2("/home/karthik/Desktop/FinalGene/GeneNames.csv", header = TRUE, sep=",")
# check if the names are the same (in the same order)
print(genes_index$Name == row.names(countData))
# add column with gene names
countData <- cbind(countData,genes_index$BlastName)
countData<- countData[countData$`genes_index$BlastName` != 0,]

### Data for DESeq2 analysis

rownames(countData) = make.names(countData$`genes_index$BlastName`, unique = TRUE)
countData=countData[c("FL_15","HL_15","FL_16","HL_16","FL_17")]


# DESeq2


cts = countData
coldata = read.table("/home/karthik/Desktop/FinalGene/TypeCondition.csv")

### create deseq dataset
dds <- DESeqDataSetFromMatrix(countData = cts,
                              colData = coldata,
                              design = ~ condition + type)

```

### Analyse data

dds <- DESeq(dds)

# results extracts a result table from a DESeq analysis giving base means across samples, log2 fold changes, standard errors, test statistics, p-values and adjusted p-values
res <- results(dds)

#resultsNames returns the names of the estimated effects (coefficents) of the model
resultsNames(dds)



# LFC

reslfcHL_FL = lfcShrink(dds, coef = "type_HL_vs_FL", type = "apeglm")
write.csv(as.data.frame(reslfcHL_FL), file="res_LFC_HL_FL.csv")

resOrdered <- res[order(res$pvalue),]


### Write to file

write.csv(as.data.frame(resOrdered), file="pval_deseq2_results.csv")



summary(res)



sub_res <- subset(resOrdered, padj <0.01)
write.csv(as.data.frame(sub_res), file="deseq2_results_pval0.01.csv")


### Plot


plotMA(res)
#plotMA(sub_res) #p-val < 0.01

Scatter plot of log2 fold changes (on the y-axis) versus the mean of normalized counts (on the x-axis)

#plotMA(reslfc16_15)
#plotMA(reslfc17_15)
plotMA(reslfcHL_FL)

#gene2=which.min(res$padj)

gene2 = which(rownames(res) == "PITX1")
p<- plotCounts(dds, gene2, intgroup=c("condition","type"), returnData = TRUE)
ggplot(p, aes(x=condition, y=count, color=type)) + 
  geom_point(position=position_jitter(w=0.1,h=0)) + 
  scale_y_log10(breaks=c(10,100, 1000,5000))+
  ggtitle(rownames(res)[gene2])+
  theme(plot.title = element_text(hjust = 0.5))

gene2 = which(rownames(res) == "RPS27")
p<- plotCounts(dds, gene2, intgroup=c("condition","type"), returnData = TRUE)
ggplot(p, aes(x=condition, y=count, color=type)) + 
  geom_point(position=position_jitter(w=0.1,h=0)) + 
  scale_y_log10(breaks=c(10,100, 1000,5000))+
  ggtitle(rownames(res)[gene2])+
  theme(plot.title = element_text(hjust = 0.5))

gene2 = which(rownames(res) == "TGFBI")
p<- plotCounts(dds, gene2, intgroup=c("condition","type"), returnData = TRUE)
ggplot(p, aes(x=condition, y=count, color=type)) + 
  geom_point(position=position_jitter(w=0.1,h=0)) + 
  scale_y_log10(breaks=c(10,100, 1000,5000))+
  ggtitle(rownames(res)[gene2])+
  theme(plot.title = element_text(hjust = 0.5))


### Plot PCA

vsd = varianceStabilizingTransformation(dds)



#plotPCA(vsd, intgroup=c("condition", "type"))

pcaData <- plotPCA(vsd, intgroup=c("condition", "type"), returnData=TRUE)
percentVar <- round(100 * attr(pcaData, "percentVar"))
ggplot(pcaData, aes(PC1, PC2, color=condition, shape=type)) +
  geom_point(size=3) +
  xlab(paste0("PC1: ",percentVar[1],"% variance")) +
  ylab(paste0("PC2: ",percentVar[2],"% variance")) + 
  coord_fixed()





zScoreMatrix <- (cts-rowMeans(cts))/(rowSds(as.matrix(cts)))[row(cts)]

#remove NaN (what were zeros before)
zScoreMatrix <- na.omit(zScoreMatrix)
pheatmap(zScoreMatrix, cluster_rows=TRUE, show_rownames=TRUE,
         cluster_cols=FALSE, fontsize_row = 5)

# can add  annotation_col=df

genes_pval <- rownames(sub_res)
htseq_genes_pval0.01 <- cts[is.element(rownames(cts), genes_pval),]
htseq_genes_pval0.01

zScoreMatrix_pval <- (htseq_genes_pval0.01-rowMeans(htseq_genes_pval0.01))/(rowSds(as.matrix(htseq_genes_pval0.01)))[row(htseq_genes_pval0.01)]


zScoreMatrix_pval <- na.omit(zScoreMatrix_pval)
pheatmap(zScoreMatrix_pval, cluster_rows=TRUE, show_rownames=TRUE,
         cluster_cols=FALSE)

