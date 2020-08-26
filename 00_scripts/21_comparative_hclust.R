#!/usr/bin/env Rscript

library(methylKit)
library(graphics)
library(tools)
#install.packages("dendextend")
library(dendextend)

setwd("/home/stenger/stenger_data/EPIGENETIC_DATA/05_02_bismark")

## How many cluster is there (K-means) in GenoLike file?
dat <- read.table("genolike.beagle_04.txt", header=T, row.names=1)
head(dat)
dat2 <- dat[ , -c(1:2)]
colnames(dat2) <- c("Acclimation_1_31_5a", "Acclimation_1_31_5b", "Acclimation_1_31_5c", "Acclimation_3_30a", "Acclimation_3_30b", "Acclimation_3_30c", "Control_1_30a", "Control_1_30b", "Control_1_30c", "Control_3_30a", "Control_3_30b", "Control_3_30c")
head(dat2)
#dat3 <- t(dat2)
#dat4 <- head(dat3,1000)
library(factoextra)
pdf(file= 'fviz_nbclust_wss_GenoLike.pdf',  width=9, height=3)
fviz_nbclust(dat2, FUN = hcut, method = "wss")
dev.off()
pdf(file= 'fviz_nbclust_silhouette_GenoLike.pdf',  width=9, height=3)
fviz_nbclust(dat2, FUN = hcut, method = "silhouette")
dev.off()

library(cluster)
pdf(file= 'clusGap_GenoLike.pdf',  width=9, height=3)
gap_stat <- clusGap(dat2, FUN = hcut, nstart = 25, K.max = 10, B = 50)
fviz_gap_stat(gap_stat)
dev.off()


## How many cluster is there (K-means) in CpG calling file?
data <- read.table("Allmeth.norm.percent.txt", header=T)
library(factoextra)
pdf(file= 'fviz_nbclust_wss_CpG.pdf',  width=9, height=3)
fviz_nbclust(data, FUN = hcut, method = "wss")
dev.off()
pdf(file= 'fviz_nbclust_silhouette_CpG.pdf',  width=9, height=3)
fviz_nbclust(data, FUN = hcut, method = "silhouette")
dev.off()

library(cluster)
pdf(file= 'clusGap_CpG.pdf',  width=9, height=3)
gap_stat <- clusGap(data, FUN = hcut, nstart = 25, K.max = 10, B = 50)
fviz_gap_stat(gap_stat)
dev.off()


