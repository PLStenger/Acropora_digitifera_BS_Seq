#!/usr/bin/env Rscript

setwd("/home/stenger/stenger_data/EPIGENETIC_DATA/10_chimeras")
dat <- read.table("genolike.beagle.txt", header=T, row.names=1)
head(dat)

dat2 <- dat[ , -c(1:2)]
colnames(dat2) <- c("Acclimation_1_31_5a", "Acclimation_1_31_5b", "Acclimation_1_31_5c", "Acclimation_3_30a", "Acclimation_3_30b", "Acclimation_3_30c", "Control_1_30a", "Control_1_30b", "Control_1_30c", "Control_3_30a", "Control_3_30b", "Control_3_30c")
head(dat2)
dat3 <- t(dat2)

# Euclidean distance
dist <- dist(dat3 , diag=TRUE)

# Hierarchical Clustering with hclust
hc <- hclust(dist)

# Plot the result
plot(hc)