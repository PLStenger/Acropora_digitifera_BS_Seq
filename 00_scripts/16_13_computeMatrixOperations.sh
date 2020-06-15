#!/usr/bin/env bash

DATADIRECTORY=/home/stenger/stenger_data/EPIGENETIC_DATA/05_02_bismark

cd $DATADIRECTORY


#computeMatrixOperations cbind -m Acclimation_1_31_5a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_1_31_5b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_1_31_5c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o cbind_output.mat.gz
#plotHeatmap -m cbind_output.mat.gz -out heatmap_cbind_output.mat.pdf

#computeMatrixOperations rbind -m Acclimation_1_31_5a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_1_31_5b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_1_31_5c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o rbind_output.mat.gz
#plotHeatmap -m rbind_output.mat.gz -out heatmap_rbind_output.mat.pdf

#### IMPOSSIBLE to do this; because all the input array dimensions except for the concatenation axis must match exactly
#computeMatrixOperations cbind -m FC_A1vsA3_up_Acclimation_1_31_5b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz FC_A1vsC3_up_Acclimation_1_31_5b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz FC_C1vsA1_up_Acclimation_1_31_5b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz FC_A1vsA3_up_Acclimation_1_31_5b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz FC_C1vsA3_up_Acclimation_1_31_5b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz FC_C3vsA3_up_Acclimation_1_31_5b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o Up_Acclimation_1_31_5b_cbind_output.mat.gz
#plotHeatmap -m Up_Acclimation_1_31_5b_cbind_output.mat.gz -out Up_Acclimation_1_31_5b_heatmap_cbind_output.mat.pdf

# FC_C1vsC3_up_Control_3_30
computeMatrixOperations cbind -m  FC_C1vsC3_up_Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz_matrix.mat.gz FC_C1vsC3_up_Control_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz_matrix.mat.gz FC_C1vsC3_up_Control_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz_matrix.mat.gz -o FC_C1vsC3_up_Control_3_30_cbind_output.mat.gz
plotHeatmap -m FC_C1vsC3_up_Control_3_30_cbind_output.mat.gz -out FC_C1vsC3_up_Control_3_30_cbind_output.mat.pdf
