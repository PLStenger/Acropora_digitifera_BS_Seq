#!/usr/bin/env Rscript

library(methylKit)
library(graphics)
library(tools)
#install.packages("dendextend")
library(dendextend)

setwd("/home/stenger/stenger_data/EPIGENETIC_DATA/05_02_bismark")

#load("Allmeth.norm.rda")
#hc2 <- clusterSamples(Allmeth.norm, dist="correlation", method="ward", plot=TRUE)

#print("head(Allmeth.norm)")
#head(Allmeth.norm)

#print("Euclidean distance CpG")
# Euclidean distance
#dist2 <- dist(Allmeth.norm , diag=TRUE)
#head(dist2)

# Hierarchical Clustering with hclust
#hc2 <- hclust(dist2)

# Plot the result
#plot(hc2)

dat <- read.table("genolike.beagle_04.txt", header=T, row.names=1)
head(dat)

dat2 <- dat[ , -c(1:2)]
colnames(dat2) <- c("Acclimation_1_31_5a", "Acclimation_1_31_5b", "Acclimation_1_31_5c", "Acclimation_3_30a", "Acclimation_3_30b", "Acclimation_3_30c", "Control_1_30a", "Control_1_30b", "Control_1_30c", "Control_3_30a", "Control_3_30b", "Control_3_30c")
head(dat2)
dat3 <- t(dat2)
dat4 <- head(dat3,1000)

library(factoextra)
fviz_nbclust(dat4, FUN = hcut, method = "wss")
fviz_nbclust(dat4, FUN = hcut, method = "silhouette")
library(cluster)
gap_stat <- clusGap(dat4, FUN = hcut, nstart = 25, K.max = 10, B = 50)
fviz_gap_stat(gap_stat)



