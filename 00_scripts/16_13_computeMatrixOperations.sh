#!/usr/bin/env bash

DATADIRECTORY=/home/stenger/stenger_data/EPIGENETIC_DATA/05_02_bismark

cd $DATADIRECTORY


computeMatrixOperations cbind -m Acclimation_1_31_5a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_1_31_5b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_1_31_5c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o cbind_output.mat.gz
plotHeatmap -m cbind_output.mat.gz -out heatmap_cbind_output.mat.pdf

computeMatrixOperations rbind -m Acclimation_1_31_5a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_1_31_5b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_1_31_5c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o rbind_output.mat.gz
plotHeatmap -m rbind_output.mat.gz -out heatmap_rbind_output.mat.pdf

