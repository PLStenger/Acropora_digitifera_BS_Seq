#!/usr/bin/env bash

DATADIRECTORY=/home/stenger/stenger_data/EPIGENETIC_DATA/05_02_bismark

cd $DATADIRECTORY


computeMatrixOperations rbind -m Control_1_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o only_controls_2_replicats_matrix.mat.gz

plotHeatmap -m only_controls_2_replicats_matrix.mat.gz -out only_controls_2_replicats_matrix.mat.gz.pdf 

plotHeatmap -m only_controls_2_replicats_matrix.mat.gz \
     -out only_controls_2_replicats_matrix.mat.gz_kmeans_02.pdf \
     --colorMap RdBu \
     --whatToShow 'plot, heatmap and colorbar' \
     --zMin -3 --zMax 3 \
     --kmeans 2 \
     --outFileSortedRegions only_controls_2_replicats_matrix.mat.gz_kmeans_02.bed

plotHeatmap -m only_controls_2_replicats_matrix.mat.gz \
     -out only_controls_2_replicats_matrix.mat.gz_kmeans_03.pdf \
     --colorMap RdBu \
     --whatToShow 'plot, heatmap and colorbar' \
     --zMin -3 --zMax 3 \
     --kmeans 3 \
     --outFileSortedRegions only_controls_2_replicats_matrix.mat.gz_kmeans_03.bed

plotHeatmap -m only_controls_2_replicats_matrix.mat.gz \
     -out only_controls_2_replicats_matrix.mat.gz_kmeans_04.pdf \
     --colorMap RdBu \
     --whatToShow 'plot, heatmap and colorbar' \
     --zMin -3 --zMax 3 \
     --kmeans 4 \
     --outFileSortedRegions only_controls_2_replicats_matrix.mat.gz_kmeans_04.bed
