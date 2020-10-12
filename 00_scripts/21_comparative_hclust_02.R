#!/usr/bin/env Rscript

library(methylKit)
library(graphics)
library(tools)
#install.packages("dendextend")
library(dendextend)

setwd("/home/stenger/stenger_data/EPIGENETIC_DATA/05_02_bismark")

load("Allmeth.norm.rda")
hc2 <- clusterSamples(Allmeth.norm, dist="correlation", method="ward", plot=TRUE)

#dat <- read.table("genolike.beagle_04.txt", header=T, row.names=1)
#dat2 <- dat[ , -c(1:2)]
#colnames(dat2) <- c("Acclimation_1_31_5a", "Acclimation_1_31_5b", "Acclimation_1_31_5c", "Acclimation_3_30a", "Acclimation_3_30b", "Acclimation_3_30c", "Control_1_30a", "Control_1_30b", "Control_1_30c", "Control_3_30a", "Control_3_30b", "Control_3_30c")
#dat3 <- t(dat2)

# Euclidean distance
#dist <- dist(dat3 , diag=TRUE)

# Hierarchical Clustering with hclust
#hc <- hclust(dist)


dat <- read.table("all.ibs", header=T, row.names=1)
head(dat)
#tail(dat)

# Test for only A/G Snps
dat <- data.frame(c(dat$nSites, dat$Llike, dat$nAG))

row.names(dat) <- c("Acclimation_1_31_5a",
  "Acclimation_1_31_5b",
  "Acclimation_1_31_5c",
  "Acclimation_3_30a",
  "Acclimation_3_30b",
  "Acclimation_3_30c",
  "Control_1_30a",
  "Control_1_30b",
  "Control_1_30c",
  "Control_3_30a",
  "Control_3_30b",
  "Control_3_30c")

# Euclidean distance
dist <- dist(dat , diag=TRUE)/10000000

# Hierarchical Clustering with hclust
hc <- hclust(dist, method = "average")




# Create two dendrograms
d1 <- as.dendrogram (hc)
d2 <- as.dendrogram (hc2)

# Create a list to hold dendrograms
dend_list <- dendlist(d1, d2)

pdf(file= 'Comparative_dendrogram_02_01.pdf' ,onefile=T,paper='A4')


# Align and plot two dendrograms side by side
dendlist(d1, d2) %>%
  untangle(method = "step1side") %>% # Find the best alignment layout
  tanglegram()                       # Draw the two dendrograms

dev.off()


pdf(file= 'Comparative_dendrogram_02_03_kmeans4.pdf', onefile=T, paper='a4r')

dl <- dendlist(
  d1 %>% 
    set("labels_col", value = c("skyblue", "orange"), k=2) %>%
    set("branches_lty", 1) %>%
    set("branches_k_color", value = c("skyblue", "orange"), k = 2),
  d2 %>% 
    set("labels_col", value = c("skyblue", "orange", "red", "green"), k=4) %>%
    set("branches_lty", 1) %>%
    set("branches_k_color", value = c("skyblue", "orange", "red", "green"), k = 4)
) %>%
  untangle(method = "step1side") # Find the best alignment layout

# Plot them together
tanglegram(dl, 
           common_subtrees_color_lines = TRUE, 
           highlight_distinct_edges  = TRUE, 
           highlight_branches_lwd = FALSE, 
           margin_inner=7,
           lwd=2
)

dev.off()



pdf(file= 'Comparative_dendrogram_02_03_kmeans2_2.pdf', onefile=T, paper='a4r')

dl <- dendlist(
  d1 %>% 
    set("labels_col", value = c("skyblue", "orange"), k=2) %>%
    set("branches_lty", 1) %>%
    set("branches_k_color", value = c("skyblue", "orange"), k = 2),
  d2 %>% 
    set("labels_col", value = c("skyblue", "orange", "red", "green"), k=2) %>%
    set("branches_lty", 1) %>%
    set("branches_k_color", value = c("skyblue", "orange", "red", "green"), k = 2)
) %>%
  untangle(method = "step1side") # Find the best alignment layout

# Plot them together
tanglegram(dl, 
           common_subtrees_color_lines = TRUE, 
           highlight_distinct_edges  = TRUE, 
           highlight_branches_lwd = FALSE, 
           margin_inner=7,
           lwd=2
)

dev.off()

pdf(file= 'Comparative_dendrogram_02_03_kmeans3_2.pdf', onefile=T, paper='a4r')

dl <- dendlist(
  d1 %>% 
    set("labels_col", value = c("skyblue", "orange"), k=3) %>%
    set("branches_lty", 1) %>%
    set("branches_k_color", value = c("skyblue", "orange"), k = 3),
  d2 %>% 
    set("labels_col", value = c("skyblue", "orange", "red", "green"), k=2) %>%
    set("branches_lty", 1) %>%
    set("branches_k_color", value = c("skyblue", "orange", "red", "green"), k = 2)
) %>%
  untangle(method = "step1side") # Find the best alignment layout

# Plot them together
tanglegram(dl, 
           common_subtrees_color_lines = TRUE, 
           highlight_distinct_edges  = TRUE, 
           highlight_branches_lwd = FALSE, 
           margin_inner=7,
           lwd=2
)

dev.off()


pdf(file= 'Comparative_dendrogram_02_03_kmeans5.pdf', onefile=T, paper='a4r')

# Custom these kendo, and place them in a list

#dl <- dendlist(
#  d1 %>% 
#    set("labels_col", value = c("skyblue", "orange", "grey"), k=3) %>%
#    set("branches_lty", 1) %>%
#    set("branches_k_color", value = c("skyblue", "orange", "grey"), k = 3),
#  d2 %>% 
#    set("labels_col", value = c("skyblue", "orange", "grey"), k=3) %>%
#    set("branches_lty", 1) %>%
#    set("branches_k_color", value = c("skyblue", "orange", "grey"), k = 3)
#)


dl <- dendlist(
  d1 %>% 
    set("labels_col", value = c("skyblue", "orange"), k=2) %>%
    set("branches_lty", 1) %>%
    set("branches_k_color", value = c("skyblue", "orange"), k = 2),
  d2 %>% 
    set("labels_col", value = c("skyblue", "orange", "red", "green", "grey"), k=5) %>%
    set("branches_lty", 1) %>%
    set("branches_k_color", value = c("skyblue", "orange", "red", "green", "grey"), k = 5)
) %>%
  untangle(method = "step1side") # Find the best alignment layout

# Plot them together
tanglegram(dl, 
           common_subtrees_color_lines = TRUE, 
           highlight_distinct_edges  = TRUE, 
           highlight_branches_lwd = FALSE, 
           margin_inner=7,
           lwd=2
)

dev.off()

pdf(file= 'Comparative_dendrogram_02_03_kmeans6.pdf', onefile=T, paper='a4r')

# Custom these kendo, and place them in a list

#dl <- dendlist(
#  d1 %>% 
#    set("labels_col", value = c("skyblue", "orange", "grey"), k=3) %>%
#    set("branches_lty", 1) %>%
#    set("branches_k_color", value = c("skyblue", "orange", "grey"), k = 3),
#  d2 %>% 
#    set("labels_col", value = c("skyblue", "orange", "grey"), k=3) %>%
#    set("branches_lty", 1) %>%
#    set("branches_k_color", value = c("skyblue", "orange", "grey"), k = 3)
#)


dl <- dendlist(
  d1 %>% 
    set("labels_col", value = c("skyblue", "orange"), k=2) %>%
    set("branches_lty", 1) %>%
    set("branches_k_color", value = c("skyblue", "orange"), k = 2),
  d2 %>% 
    set("labels_col", value = c("skyblue", "orange", "red", "green", "grey", "blue"), k=6) %>%
    set("branches_lty", 1) %>%
    set("branches_k_color", value = c("skyblue", "orange", "red", "green", "grey", "blue"), k = 6)
) %>%
  untangle(method = "step1side") # Find the best alignment layout

# Plot them together
tanglegram(dl, 
           common_subtrees_color_lines = TRUE, 
           highlight_distinct_edges  = TRUE, 
           highlight_branches_lwd = FALSE, 
           margin_inner=7,
           lwd=2
)

dev.off()


pdf(file= 'Comparative_dendrogram_02_03_kmeans3.pdf', onefile=T, paper='a4r')

# Custom these kendo, and place them in a list

#dl <- dendlist(
#  d1 %>% 
#    set("labels_col", value = c("skyblue", "orange", "grey"), k=3) %>%
#    set("branches_lty", 1) %>%
#    set("branches_k_color", value = c("skyblue", "orange", "grey"), k = 3),
#  d2 %>% 
#    set("labels_col", value = c("skyblue", "orange", "grey"), k=3) %>%
#    set("branches_lty", 1) %>%
#    set("branches_k_color", value = c("skyblue", "orange", "grey"), k = 3)
#)


dl <- dendlist(
  d1 %>% 
    set("labels_col", value = c("skyblue", "orange"), k=2) %>%
    set("branches_lty", 1) %>%
    set("branches_k_color", value = c("skyblue", "orange"), k = 2),
  d2 %>% 
    set("labels_col", value = c("skyblue", "orange", "red"), k=3) %>%
    set("branches_lty", 1) %>%
    set("branches_k_color", value = c("skyblue", "orange", "red"), k = 3)
) %>%
  untangle(method = "step1side") # Find the best alignment layout

# Plot them together
tanglegram(dl, 
           common_subtrees_color_lines = TRUE, 
           highlight_distinct_edges  = TRUE, 
           highlight_branches_lwd = FALSE, 
           margin_inner=7,
           lwd=2
)

dev.off()

