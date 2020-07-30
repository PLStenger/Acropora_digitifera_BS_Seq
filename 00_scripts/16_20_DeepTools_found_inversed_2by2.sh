#!/usr/bin/env bash

DATADIRECTORY=/home/stenger/stenger_data/EPIGENETIC_DATA/05_02_bismark

cd $DATADIRECTORY

computeMatrixOperations rbind -m Acclimation_1_31_5a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_1_31_5b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A1a_vs_A1b.mat.gz
computeMatrixOperations rbind -m Acclimation_1_31_5a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_1_31_5c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A1a_vs_A1c.mat.gz
computeMatrixOperations rbind -m Acclimation_1_31_5a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A1a_vs_A3a.mat.gz
computeMatrixOperations rbind -m Acclimation_1_31_5a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A1a_vs_A3b.mat.gz
computeMatrixOperations rbind -m Acclimation_1_31_5a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A1a_vs_A3c.mat.gz
computeMatrixOperations rbind -m Acclimation_1_31_5a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A1a_vs_C1a.mat.gz
computeMatrixOperations rbind -m Acclimation_1_31_5a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A1a_vs_C1b.mat.gz
computeMatrixOperations rbind -m Acclimation_1_31_5a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A1a_vs_C1c.mat.gz
computeMatrixOperations rbind -m Acclimation_1_31_5a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A1a_vs_C3a.mat.gz
computeMatrixOperations rbind -m Acclimation_1_31_5a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A1a_vs_C3b.mat.gz
computeMatrixOperations rbind -m Acclimation_1_31_5a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A1a_vs_C3c.mat.gz
computeMatrixOperations rbind -m Acclimation_1_31_5b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_1_31_5c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A1b_vs_A1c.mat.gz
computeMatrixOperations rbind -m Acclimation_1_31_5b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A1b_vs_A3a.mat.gz
computeMatrixOperations rbind -m Acclimation_1_31_5b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A1b_vs_A3b.mat.gz
computeMatrixOperations rbind -m Acclimation_1_31_5b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A1b_vs_A3c.mat.gz
computeMatrixOperations rbind -m Acclimation_1_31_5b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A1b_vs_C1a.mat.gz
computeMatrixOperations rbind -m Acclimation_1_31_5b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A1b_vs_C1b.mat.gz
computeMatrixOperations rbind -m Acclimation_1_31_5b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A1b_vs_C1c.mat.gz
computeMatrixOperations rbind -m Acclimation_1_31_5b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A1b_vs_C3a.mat.gz
computeMatrixOperations rbind -m Acclimation_1_31_5b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A1b_vs_C3b.mat.gz
computeMatrixOperations rbind -m Acclimation_1_31_5b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A1b_vs_C3c.mat.gz
computeMatrixOperations rbind -m Acclimation_1_31_5c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A1c_vs_A3a.mat.gz
computeMatrixOperations rbind -m Acclimation_1_31_5c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A1c_vs_A3b.mat.gz
computeMatrixOperations rbind -m Acclimation_1_31_5c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A1c_vs_A3c.mat.gz
computeMatrixOperations rbind -m Acclimation_1_31_5c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A1c_vs_C1a.mat.gz
computeMatrixOperations rbind -m Acclimation_1_31_5c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A1c_vs_C1b.mat.gz
computeMatrixOperations rbind -m Acclimation_1_31_5c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A1c_vs_C1c.mat.gz
computeMatrixOperations rbind -m Acclimation_1_31_5c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A1c_vs_C3a.mat.gz
computeMatrixOperations rbind -m Acclimation_1_31_5c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A1c_vs_C3b.mat.gz
computeMatrixOperations rbind -m Acclimation_1_31_5c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A1c_vs_C3c.mat.gz
computeMatrixOperations rbind -m Acclimation_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A3a_vs_A3b.mat.gz
computeMatrixOperations rbind -m Acclimation_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A3a_vs_A3c.mat.gz
computeMatrixOperations rbind -m Acclimation_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A3a_vs_C1a.mat.gz
computeMatrixOperations rbind -m Acclimation_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A3a_vs_C1b.mat.gz
computeMatrixOperations rbind -m Acclimation_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A3a_vs_C1c.mat.gz
computeMatrixOperations rbind -m Acclimation_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A3a_vs_C3a.mat.gz
computeMatrixOperations rbind -m Acclimation_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A3a_vs_C3b.mat.gz
computeMatrixOperations rbind -m Acclimation_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A3a_vs_C3c.mat.gz
computeMatrixOperations rbind -m Acclimation_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A3b_vs_A3b.mat.gz
computeMatrixOperations rbind -m Acclimation_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A3b_vs_A3c.mat.gz
computeMatrixOperations rbind -m Acclimation_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A3b_vs_C1a.mat.gz
computeMatrixOperations rbind -m Acclimation_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A3b_vs_C1b.mat.gz
computeMatrixOperations rbind -m Acclimation_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A3b_vs_C1c.mat.gz
computeMatrixOperations rbind -m Acclimation_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A3b_vs_C3a.mat.gz
computeMatrixOperations rbind -m Acclimation_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A3b_vs_C3b.mat.gz
computeMatrixOperations rbind -m Acclimation_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A3b_vs_C3c.mat.gz
computeMatrixOperations rbind -m Acclimation_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A3c_vs_C1a.mat.gz
computeMatrixOperations rbind -m Acclimation_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A3c_vs_C1b.mat.gz
computeMatrixOperations rbind -m Acclimation_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A3c_vs_C1c.mat.gz
computeMatrixOperations rbind -m Acclimation_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A3c_vs_C3a.mat.gz
computeMatrixOperations rbind -m Acclimation_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A3c_vs_C3b.mat.gz
computeMatrixOperations rbind -m Acclimation_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o A3c_vs_C3c.mat.gz
computeMatrixOperations rbind -m Control_1_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o C1a_vs_C1b.mat.gz
computeMatrixOperations rbind -m Control_1_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o C1a_vs_C1c.mat.gz
computeMatrixOperations rbind -m Control_1_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o C1a_vs_C3a.mat.gz
computeMatrixOperations rbind -m Control_1_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o C1a_vs_C3b.mat.gz
computeMatrixOperations rbind -m Control_1_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o C1a_vs_C3c.mat.gz
computeMatrixOperations rbind -m Control_1_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o C1b_vs_C1c.mat.gz
computeMatrixOperations rbind -m Control_1_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o C1b_vs_C3a.mat.gz
computeMatrixOperations rbind -m Control_1_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o C1b_vs_C3b.mat.gz
computeMatrixOperations rbind -m Control_1_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o C1b_vs_C3c.mat.gz
computeMatrixOperations rbind -m Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o C1c_vs_C3a.mat.gz
computeMatrixOperations rbind -m Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o C1c_vs_C3b.mat.gz
computeMatrixOperations rbind -m Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o C1c_vs_C3c.mat.gz
computeMatrixOperations rbind -m Control_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o C3a_vs_C3b.mat.gz
computeMatrixOperations rbind -m Control_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o C3a_vs_C3c.mat.gz
computeMatrixOperations rbind -m Control_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o C3b_vs_C3c.mat.gz




plotHeatmap -m A1a_vs_A1b.mat.gz -out A1a_vs_A1b.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A1a_vs_A1b.mat.gz.kmeans_04.bed
plotHeatmap -m A1a_vs_A1c.mat.gz -out A1a_vs_A1c.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A1a_vs_A1c.mat.gz.kmeans_04.bed
plotHeatmap -m A1a_vs_A3a.mat.gz -out A1a_vs_A3a.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A1a_vs_A3a.mat.gz.kmeans_04.bed
plotHeatmap -m A1a_vs_A3b.mat.gz -out A1a_vs_A3b.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A1a_vs_A3b.mat.gz.kmeans_04.bed
plotHeatmap -m A1a_vs_A3c.mat.gz -out A1a_vs_A3c.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A1a_vs_A3c.mat.gz.kmeans_04.bed
plotHeatmap -m A1a_vs_C1a.mat.gz -out A1a_vs_C1a.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A1a_vs_C1a.mat.gz.kmeans_04.bed
plotHeatmap -m A1a_vs_C1b.mat.gz -out A1a_vs_C1b.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A1a_vs_C1b.mat.gz.kmeans_04.bed
plotHeatmap -m A1a_vs_C1c.mat.gz -out A1a_vs_C1c.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A1a_vs_C1c.mat.gz.kmeans_04.bed
plotHeatmap -m A1a_vs_C3a.mat.gz -out A1a_vs_C3a.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A1a_vs_C3a.mat.gz.kmeans_04.bed
plotHeatmap -m A1a_vs_C3b.mat.gz -out A1a_vs_C3b.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A1a_vs_C3b.mat.gz.kmeans_04.bed
plotHeatmap -m A1a_vs_C3c.mat.gz -out A1a_vs_C3c.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A1a_vs_C3c.mat.gz.kmeans_04.bed
plotHeatmap -m A1b_vs_A1c.mat.gz -out A1b_vs_A1c.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A1b_vs_A1c.mat.gz.kmeans_04.bed
plotHeatmap -m A1b_vs_A3a.mat.gz -out A1b_vs_A3a.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A1b_vs_A3a.mat.gz.kmeans_04.bed
plotHeatmap -m A1b_vs_A3b.mat.gz -out A1b_vs_A3b.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A1b_vs_A3b.mat.gz.kmeans_04.bed
plotHeatmap -m A1b_vs_A3c.mat.gz -out A1b_vs_A3c.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A1b_vs_A3c.mat.gz.kmeans_04.bed
plotHeatmap -m A1b_vs_C1a.mat.gz -out A1b_vs_C1a.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A1b_vs_C1a.mat.gz.kmeans_04.bed
plotHeatmap -m A1b_vs_C1b.mat.gz -out A1b_vs_C1b.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A1b_vs_C1b.mat.gz.kmeans_04.bed
plotHeatmap -m A1b_vs_C1c.mat.gz -out A1b_vs_C1c.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A1b_vs_C1c.mat.gz.kmeans_04.bed
plotHeatmap -m A1b_vs_C3a.mat.gz -out A1b_vs_C3a.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A1b_vs_C3a.mat.gz.kmeans_04.bed
plotHeatmap -m A1b_vs_C3b.mat.gz -out A1b_vs_C3b.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A1b_vs_C3b.mat.gz.kmeans_04.bed
plotHeatmap -m A1b_vs_C3c.mat.gz -out A1b_vs_C3c.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A1b_vs_C3c.mat.gz.kmeans_04.bed
plotHeatmap -m A1c_vs_A3a.mat.gz -out A1c_vs_A3a.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A1c_vs_A3a.mat.gz.kmeans_04.bed
plotHeatmap -m A1c_vs_A3b.mat.gz -out A1c_vs_A3b.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A1c_vs_A3b.mat.gz.kmeans_04.bed
plotHeatmap -m A1c_vs_A3c.mat.gz -out A1c_vs_A3c.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A1c_vs_A3c.mat.gz.kmeans_04.bed
plotHeatmap -m A1c_vs_C1a.mat.gz -out A1c_vs_C1a.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A1c_vs_C1a.mat.gz.kmeans_04.bed
plotHeatmap -m A1c_vs_C1b.mat.gz -out A1c_vs_C1b.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A1c_vs_C1b.mat.gz.kmeans_04.bed
plotHeatmap -m A1c_vs_C1c.mat.gz -out A1c_vs_C1c.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A1c_vs_C1c.mat.gz.kmeans_04.bed
plotHeatmap -m A1c_vs_C3a.mat.gz -out A1c_vs_C3a.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A1c_vs_C3a.mat.gz.kmeans_04.bed
plotHeatmap -m A1c_vs_C3b.mat.gz -out A1c_vs_C3b.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A1c_vs_C3b.mat.gz.kmeans_04.bed
plotHeatmap -m A1c_vs_C3c.mat.gz -out A1c_vs_C3c.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A1c_vs_C3c.mat.gz.kmeans_04.bed
plotHeatmap -m A3a_vs_A3b.mat.gz -out A3a_vs_A3b.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A3a_vs_A3b.mat.gz.kmeans_04.bed
plotHeatmap -m A3a_vs_A3c.mat.gz -out A3a_vs_A3c.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A3a_vs_A3c.mat.gz.kmeans_04.bed
plotHeatmap -m A3a_vs_C1a.mat.gz -out A3a_vs_C1a.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A3a_vs_C1a.mat.gz.kmeans_04.bed
plotHeatmap -m A3a_vs_C1b.mat.gz -out A3a_vs_C1b.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A3a_vs_C1b.mat.gz.kmeans_04.bed
plotHeatmap -m A3a_vs_C1c.mat.gz -out A3a_vs_C1c.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A3a_vs_C1c.mat.gz.kmeans_04.bed
plotHeatmap -m A3a_vs_C3a.mat.gz -out A3a_vs_C3a.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A3a_vs_C3a.mat.gz.kmeans_04.bed
plotHeatmap -m A3a_vs_C3b.mat.gz -out A3a_vs_C3b.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A3a_vs_C3b.mat.gz.kmeans_04.bed
plotHeatmap -m A3a_vs_C3c.mat.gz -out A3a_vs_C3c.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A3a_vs_C3c.mat.gz.kmeans_04.bed
plotHeatmap -m A3b_vs_A3b.mat.gz -out A3b_vs_A3b.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A3b_vs_A3b.mat.gz.kmeans_04.bed
plotHeatmap -m A3b_vs_A3c.mat.gz -out A3b_vs_A3c.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A3b_vs_A3c.mat.gz.kmeans_04.bed
plotHeatmap -m A3b_vs_C1a.mat.gz -out A3b_vs_C1a.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A3b_vs_C1a.mat.gz.kmeans_04.bed
plotHeatmap -m A3b_vs_C1b.mat.gz -out A3b_vs_C1b.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A3b_vs_C1b.mat.gz.kmeans_04.bed
plotHeatmap -m A3b_vs_C1c.mat.gz -out A3b_vs_C1c.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A3b_vs_C1c.mat.gz.kmeans_04.bed
plotHeatmap -m A3b_vs_C3a.mat.gz -out A3b_vs_C3a.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A3b_vs_C3a.mat.gz.kmeans_04.bed
plotHeatmap -m A3b_vs_C3b.mat.gz -out A3b_vs_C3b.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A3b_vs_C3b.mat.gz.kmeans_04.bed
plotHeatmap -m A3b_vs_C3c.mat.gz -out A3b_vs_C3c.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A3b_vs_C3c.mat.gz.kmeans_04.bed
plotHeatmap -m A3c_vs_C1a.mat.gz -out A3c_vs_C1a.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A3c_vs_C1a.mat.gz.kmeans_04.bed
plotHeatmap -m A3c_vs_C1b.mat.gz -out A3c_vs_C1b.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A3c_vs_C1b.mat.gz.kmeans_04.bed
plotHeatmap -m A3c_vs_C1c.mat.gz -out A3c_vs_C1c.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A3c_vs_C1c.mat.gz.kmeans_04.bed
plotHeatmap -m A3c_vs_C3a.mat.gz -out A3c_vs_C3a.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A3c_vs_C3a.mat.gz.kmeans_04.bed
plotHeatmap -m A3c_vs_C3b.mat.gz -out A3c_vs_C3b.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A3c_vs_C3b.mat.gz.kmeans_04.bed
plotHeatmap -m A3c_vs_C3c.mat.gz -out A3c_vs_C3c.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions A3c_vs_C3c.mat.gz.kmeans_04.bed
plotHeatmap -m C1a_vs_C1b.mat.gz -out C1a_vs_C1b.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions C1a_vs_C1b.mat.gz.kmeans_04.bed
plotHeatmap -m C1a_vs_C1c.mat.gz -out C1a_vs_C1c.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions C1a_vs_C1c.mat.gz.kmeans_04.bed
plotHeatmap -m C1a_vs_C3a.mat.gz -out C1a_vs_C3a.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions C1a_vs_C3a.mat.gz.kmeans_04.bed
plotHeatmap -m C1a_vs_C3b.mat.gz -out C1a_vs_C3b.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions C1a_vs_C3b.mat.gz.kmeans_04.bed
plotHeatmap -m C1a_vs_C3c.mat.gz -out C1a_vs_C3c.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions C1a_vs_C3c.mat.gz.kmeans_04.bed
plotHeatmap -m C1b_vs_C1c.mat.gz -out C1b_vs_C1c.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions C1b_vs_C1c.mat.gz.kmeans_04.bed
plotHeatmap -m C1b_vs_C3a.mat.gz -out C1b_vs_C3a.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions C1b_vs_C3a.mat.gz.kmeans_04.bed
plotHeatmap -m C1b_vs_C3b.mat.gz -out C1b_vs_C3b.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions C1b_vs_C3b.mat.gz.kmeans_04.bed
plotHeatmap -m C1b_vs_C3c.mat.gz -out C1b_vs_C3c.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions C1b_vs_C3c.mat.gz.kmeans_04.bed
plotHeatmap -m C1c_vs_C3a.mat.gz -out C1c_vs_C3a.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions C1c_vs_C3a.mat.gz.kmeans_04.bed
plotHeatmap -m C1c_vs_C3b.mat.gz -out C1c_vs_C3b.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions C1c_vs_C3b.mat.gz.kmeans_04.bed
plotHeatmap -m C1c_vs_C3c.mat.gz -out C1c_vs_C3c.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions C1c_vs_C3c.mat.gz.kmeans_04.bed
plotHeatmap -m C3a_vs_C3b.mat.gz -out C3a_vs_C3b.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions C3a_vs_C3b.mat.gz.kmeans_04.bed
plotHeatmap -m C3a_vs_C3c.mat.gz -out C3a_vs_C3c.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions C3a_vs_C3c.mat.gz.kmeans_04.bed
plotHeatmap -m C3b_vs_C3c.mat.gz -out C3b_vs_C3c.mat.gz.kmeans_04.pdf  --colorMap RdBu --whatToShow 'plot, heatmap and colorbar' --zMin -3 --zMax 3 --kmeans 4 --outFileSortedRegions C3b_vs_C3c.mat.gz.kmeans_04.bed



awk 'seen[$0]++ && seen[$0] == 2' A1a_vs_A1b.mat.gz.kmeans_04.bed > A1a_vs_A1b.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A1a_vs_A1c.mat.gz.kmeans_04.bed > A1a_vs_A1c.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A1a_vs_A3a.mat.gz.kmeans_04.bed > A1a_vs_A3a.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A1a_vs_A3b.mat.gz.kmeans_04.bed > A1a_vs_A3b.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A1a_vs_A3c.mat.gz.kmeans_04.bed > A1a_vs_A3c.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A1a_vs_C1a.mat.gz.kmeans_04.bed > A1a_vs_C1a.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A1a_vs_C1b.mat.gz.kmeans_04.bed > A1a_vs_C1b.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A1a_vs_C1c.mat.gz.kmeans_04.bed > A1a_vs_C1c.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A1a_vs_C3a.mat.gz.kmeans_04.bed > A1a_vs_C3a.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A1a_vs_C3b.mat.gz.kmeans_04.bed > A1a_vs_C3b.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A1a_vs_C3c.mat.gz.kmeans_04.bed > A1a_vs_C3c.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A1b_vs_A1c.mat.gz.kmeans_04.bed > A1b_vs_A1c.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A1b_vs_A3a.mat.gz.kmeans_04.bed > A1b_vs_A3a.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A1b_vs_A3b.mat.gz.kmeans_04.bed > A1b_vs_A3b.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A1b_vs_A3c.mat.gz.kmeans_04.bed > A1b_vs_A3c.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A1b_vs_C1a.mat.gz.kmeans_04.bed > A1b_vs_C1a.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A1b_vs_C1b.mat.gz.kmeans_04.bed > A1b_vs_C1b.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A1b_vs_C1c.mat.gz.kmeans_04.bed > A1b_vs_C1c.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A1b_vs_C3a.mat.gz.kmeans_04.bed > A1b_vs_C3a.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A1b_vs_C3b.mat.gz.kmeans_04.bed > A1b_vs_C3b.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A1b_vs_C3c.mat.gz.kmeans_04.bed > A1b_vs_C3c.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A1c_vs_A3a.mat.gz.kmeans_04.bed > A1c_vs_A3a.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A1c_vs_A3b.mat.gz.kmeans_04.bed > A1c_vs_A3b.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A1c_vs_A3c.mat.gz.kmeans_04.bed > A1c_vs_A3c.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A1c_vs_C1a.mat.gz.kmeans_04.bed > A1c_vs_C1a.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A1c_vs_C1b.mat.gz.kmeans_04.bed > A1c_vs_C1b.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A1c_vs_C1c.mat.gz.kmeans_04.bed > A1c_vs_C1c.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A1c_vs_C3a.mat.gz.kmeans_04.bed > A1c_vs_C3a.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A1c_vs_C3b.mat.gz.kmeans_04.bed > A1c_vs_C3b.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A1c_vs_C3c.mat.gz.kmeans_04.bed > A1c_vs_C3c.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A3a_vs_A3b.mat.gz.kmeans_04.bed > A3a_vs_A3b.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A3a_vs_A3c.mat.gz.kmeans_04.bed > A3a_vs_A3c.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A3a_vs_C1a.mat.gz.kmeans_04.bed > A3a_vs_C1a.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A3a_vs_C1b.mat.gz.kmeans_04.bed > A3a_vs_C1b.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A3a_vs_C1c.mat.gz.kmeans_04.bed > A3a_vs_C1c.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A3a_vs_C3a.mat.gz.kmeans_04.bed > A3a_vs_C3a.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A3a_vs_C3b.mat.gz.kmeans_04.bed > A3a_vs_C3b.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A3a_vs_C3c.mat.gz.kmeans_04.bed > A3a_vs_C3c.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A3b_vs_A3b.mat.gz.kmeans_04.bed > A3b_vs_A3b.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A3b_vs_A3c.mat.gz.kmeans_04.bed > A3b_vs_A3c.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A3b_vs_C1a.mat.gz.kmeans_04.bed > A3b_vs_C1a.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A3b_vs_C1b.mat.gz.kmeans_04.bed > A3b_vs_C1b.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A3b_vs_C1c.mat.gz.kmeans_04.bed > A3b_vs_C1c.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A3b_vs_C3a.mat.gz.kmeans_04.bed > A3b_vs_C3a.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A3b_vs_C3b.mat.gz.kmeans_04.bed > A3b_vs_C3b.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A3b_vs_C3c.mat.gz.kmeans_04.bed > A3b_vs_C3c.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A3c_vs_C1a.mat.gz.kmeans_04.bed > A3c_vs_C1a.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A3c_vs_C1b.mat.gz.kmeans_04.bed > A3c_vs_C1b.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A3c_vs_C1c.mat.gz.kmeans_04.bed > A3c_vs_C1c.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A3c_vs_C3a.mat.gz.kmeans_04.bed > A3c_vs_C3a.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A3c_vs_C3b.mat.gz.kmeans_04.bed > A3c_vs_C3b.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' A3c_vs_C3c.mat.gz.kmeans_04.bed > A3c_vs_C3c.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' C1a_vs_C1b.mat.gz.kmeans_04.bed > C1a_vs_C1b.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' C1a_vs_C1c.mat.gz.kmeans_04.bed > C1a_vs_C1c.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' C1a_vs_C3a.mat.gz.kmeans_04.bed > C1a_vs_C3a.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' C1a_vs_C3b.mat.gz.kmeans_04.bed > C1a_vs_C3b.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' C1a_vs_C3c.mat.gz.kmeans_04.bed > C1a_vs_C3c.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' C1b_vs_C1c.mat.gz.kmeans_04.bed > C1b_vs_C1c.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' C1b_vs_C3a.mat.gz.kmeans_04.bed > C1b_vs_C3a.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' C1b_vs_C3b.mat.gz.kmeans_04.bed > C1b_vs_C3b.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' C1b_vs_C3c.mat.gz.kmeans_04.bed > C1b_vs_C3c.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' C1c_vs_C3a.mat.gz.kmeans_04.bed > C1c_vs_C3a.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' C1c_vs_C3b.mat.gz.kmeans_04.bed > C1c_vs_C3b.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' C1c_vs_C3c.mat.gz.kmeans_04.bed > C1c_vs_C3c.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' C3a_vs_C3b.mat.gz.kmeans_04.bed > C3a_vs_C3b.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' C3a_vs_C3c.mat.gz.kmeans_04.bed > C3a_vs_C3c.mat.gz.kmeans_04_clean.txt
awk 'seen[$0]++ && seen[$0] == 2' C3b_vs_C3c.mat.gz.kmeans_04.bed > C3b_vs_C3c.mat.gz.kmeans_04_clean.txt

