#!/usr/bin/env Rscript

library(methylKit)
library(graphics)
library(tools)
#install.packages("dendextend")
library(dendextend)

setwd("/home/stenger/stenger_data/EPIGENETIC_DATA/05_02_bismark")

load("Allmeth.norm.rda")
hc2 <- clusterSamples(Allmeth.norm, dist="correlation", method="ward", plot=TRUE)

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

library(factoextra)
fviz_nbclust(dat3, FUN = hcut, method = "wss")
fviz_nbclust(dat3, FUN = hcut, method = "silhouette")
library(cluster)
gap_stat <- clusGap(dat3, FUN = hcut, nstart = 25, K.max = 10, B = 50)
fviz_gap_stat(gap_stat)

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
d1 <- as.dendrogram (hc)
d2 <- as.dendrogram (hc2)

# Create a list to hold dendrograms
dend_list <- dendlist(d1, d2)

pdf(file= 'Comparative_dendrogram.pdf' ,onefile=T,paper='A4')


# Align and plot two dendrograms side by side
dendlist(d1, d2) %>%
  untangle(method = "step1side") %>% # Find the best alignment layout
  tanglegram()                       # Draw the two dendrograms

dev.off()






pdf(file= 'Comparative_dendrogram_02.pdf' ,onefile=T,paper='A4')

# Custom these kendo, and place them in a list
dl <- dendlist(
  d1 %>% 
    set("labels_col", value = c("skyblue", "orange", "grey"), k=3) %>%
    set("branches_lty", 1) %>%
    set("branches_k_color", value = c("skyblue", "orange", "grey"), k = 3),
  d2 %>% 
    set("labels_col", value = c("skyblue", "orange", "grey"), k=3) %>%
    set("branches_lty", 1) %>%
    set("branches_k_color", value = c("skyblue", "orange", "grey"), k = 3)
)

# Plot them together
tanglegram(dl, 
           common_subtrees_color_lines = FALSE, highlight_distinct_edges  = TRUE, highlight_branches_lwd=FALSE, 
           margin_inner=7,
           lwd=2
)

dev.off()
