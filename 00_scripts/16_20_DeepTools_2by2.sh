#!/usr/bin/env bash

DATADIRECTORY=/home/stenger/stenger_data/EPIGENETIC_DATA/05_02_bismark

cd $DATADIRECTORY

computeMatrixOperations cbind -m A1a_vs_A1c.mat.gz A3a_vs_A3b.mat.gz C1a_vs_C1c.mat.gz C3b_vs_C3c.mat.gz -o all_2by2.mat.gz

plotHeatmap -m all_2by2.mat.gz -out all_2by2.mat.gz.kmeans_02.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 2 --outFileSortedRegions all_2by2.mat.gz.kmeans_02.bed
plotHeatmap -m all_2by2.mat.gz -out all_2by2.mat.gz.kmeans_03.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 3 --outFileSortedRegions all_2by2.mat.gz.kmeans_03.bed
plotHeatmap -m all_2by2.mat.gz -out all_2by2.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions all_2by2.mat.gz.kmeans_04.bed

awk 'seen[$0]++ && seen[$0] == 2' all_2by2.mat.gz.kmeans_02.bed > all_2by2.mat.gz.kmeans_02.bed_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' all_2by2.mat.gz.kmeans_03.bed > all_2by2.mat.gz.kmeans_03.bed_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' all_2by2.mat.gz.kmeans_04.bed > all_2by2.mat.gz.kmeans_04.bed_clean.txt



