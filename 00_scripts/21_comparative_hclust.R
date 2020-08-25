#!/usr/bin/env Rscript

library(methylKit)
library(graphics)
library(tools)
library(dendextend)

setwd("/home/stenger/stenger_data/EPIGENETIC_DATA/05_02_bismark")

load("Allmeth.norm.rda")
clusterSamples(Allmeth.norm, dist="correlation", method="ward", plot=TRUE)

print("head(Allmeth.norm)")
head(Allmeth.norm)

print("Euclidean distance CpG")
# Euclidean distance
dist2 <- dist(dat3 , diag=TRUE)
head(dist2)

# Hierarchical Clustering with hclust
hc2 <- hclust(dist2)

# Plot the result
plot(hc2)

dat <- read.table("genolike.beagle_04.txt", header=T, row.names=1)
head(dat)

dat2 <- dat[ , -c(1:2)]
colnames(dat2) <- c("Acclimation_1_31_5a", "Acclimation_1_31_5b", "Acclimation_1_31_5c", "Acclimation_3_30a", "Acclimation_3_30b", "Acclimation_3_30c", "Control_1_30a", "Control_1_30b", "Control_1_30c", "Control_3_30a", "Control_3_30b", "Control_3_30c")
head(dat2)
dat3 <- t(dat2)

# Euclidean distance
dist <- dist(dat3 , diag=TRUE)

print("Euclidean distance Genolike")
# Euclidean distance
head(dist)

# Hierarchical Clustering with hclust
hc <- hclust(dist)

# Plot the result
plot(hc)


# Create two dendrograms
dend1 <- as.dendrogram (hc)
dend2 <- as.dendrogram (hc2)

# Create a list to hold dendrograms
dend_list <- dendlist(dend1, dend2)

# Align and plot two dendrograms side by side
dendlist(dend1, dend2) %>%
  untangle(method = "step1side") %>% # Find the best alignment layout
  tanglegram()                       # Draw the two dendrograms
