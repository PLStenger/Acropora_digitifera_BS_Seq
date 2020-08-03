#!/usr/bin/env bash

DATADIRECTORY=/home/stenger/stenger_data/EPIGENETIC_DATA/05_02_bismark

cd $DATADIRECTORY


computeMatrixOperations cbind -m Acclimation_1_31_5a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw Acclimation_1_31_5c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw Acclimation_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw Acclimation_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw Control_1_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw Control_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw Control_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw -o all_2_replicat_matrix.mat.gz

plotHeatmap -m all_2_replicat_matrix.mat.gz -out all_2_replicat_matrix.mat.gz.pdf 

plotHeatmap -m all_2_replicat_matrix.mat.gz \
     -out all_2_replicat_matrix.mat.gz_kmeans_02.pdf \
     --colorMap RdBu \
     --whatToShow 'plot, heatmap and colorbar' \
     --zMin -3 --zMax 3 \
     --kmeans 2 \
     --outFileSortedRegions all_2_replicat_matrix.mat.gz_kmeans_02.bed

plotHeatmap -m all_2_replicat_matrix.mat.gz \
     -out all_2_replicat_matrix.mat.gz_kmeans_03.pdf \
     --colorMap RdBu \
     --whatToShow 'plot, heatmap and colorbar' \
     --zMin -3 --zMax 3 \
     --kmeans 3 \
     --outFileSortedRegions all_2_replicat_matrix.mat.gz_kmeans_03.bed

plotHeatmap -m all_2_replicat_matrix.mat.gz \
     -out all_2_replicat_matrix.mat.gz_kmeans_04.pdf \
     --colorMap RdBu \
     --whatToShow 'plot, heatmap and colorbar' \
     --zMin -3 --zMax 3 \
     --kmeans 4 \
     --outFileSortedRegions all_2_replicat_matrix.mat.gz_kmeans_04.bed
