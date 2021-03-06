#!/usr/bin/env bash

DATADIRECTORY=/home/stenger/stenger_data/EPIGENETIC_DATA/05_02_bismark

cd $DATADIRECTORY

#computeMatrix scale-regions -S Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw -R scaffold_gene_lenght_02.bed  --beforeRegionStartLength 3000 --regionBodyLength 5000 --afterRegionStartLength 3000 -o Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz_matrix.mat.gz

#plotProfile -m Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz_matrix.mat.gz -out Acclimation_1_31_5b.pdf --plotTitle "Acclimation_1_31_5b" --plotHeight 10 --plotWidth 10

#plotHeatmap -m Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz_matrix.mat.gz -out Acclimation_1_31_5b_heatmap.pdf 

#######################################################################################################################################################################
#######################################################################################################################################################################

computeMatrix scale-regions -S Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw -R FC_A1vsA3_down.bed --beforeRegionStartLength 3000 --regionBodyLength 5000 --afterRegionStartLength 3000 -o FC_A1vsA3_down_Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz_matrix.mat.gz

plotHeatmap -m FC_A1vsA3_down_Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz_matrix.mat.gz -out FC_A1vsA3_down_Acclimation_1_31_5b_heatmap.pdf 

#######################################################################################################################################################################

#computeMatrix scale-regions -S Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw -R FC_A1vsA3_up.bed --beforeRegionStartLength 3000 --regionBodyLength 5000 --afterRegionStartLength 3000 -o FC_A1vsA3_up_Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz_matrix.mat.gz

#plotHeatmap -m FC_A1vsA3_up_Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz_matrix.mat.gz -out FC_A1vsA3_up_Acclimation_1_31_5b_heatmap.pdf 

#######################################################################################################################################################################
#######################################################################################################################################################################

computeMatrix scale-regions -S Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw -R FC_A1vsC3_down.bed --beforeRegionStartLength 3000 --regionBodyLength 5000 --afterRegionStartLength 3000 -o FC_A1vsC3_down_Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz_matrix.mat.gz

plotHeatmap -m FC_A1vsC3_down_Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz_matrix.mat.gz -out FC_A1vsC3_down_Acclimation_1_31_5b_heatmap.pdf 

#######################################################################################################################################################################

#computeMatrix scale-regions -S Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw -R FC_A1vsC3_up.bed --beforeRegionStartLength 3000 --regionBodyLength 5000 --afterRegionStartLength 3000 -o FC_A1vsC3_up_Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz_matrix.mat.gz

#plotHeatmap -m FC_A1vsC3_up_Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz_matrix.mat.gz -out FC_A1vsC3_up_Acclimation_1_31_5b_heatmap.pdf 

#######################################################################################################################################################################
#######################################################################################################################################################################

computeMatrix scale-regions -S Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw -R FC_C1vsA1_down.bed --beforeRegionStartLength 3000 --regionBodyLength 5000 --afterRegionStartLength 3000 -o FC_C1vsA1_down_Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz_matrix.mat.gz

plotHeatmap -m FC_C1vsA1_down_Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz_matrix.mat.gz -out FC_C1vsA1_down_Acclimation_1_31_5b_heatmap.pdf 

#######################################################################################################################################################################

#computeMatrix scale-regions -S Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw -R FC_C1vsA1_up.bed --beforeRegionStartLength 3000 --regionBodyLength 5000 --afterRegionStartLength 3000 -o FC_C1vsA1_up_Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz_matrix.mat.gz

#plotHeatmap -m FC_C1vsA1_up_Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz_matrix.mat.gz -out FC_C1vsA1_up_Acclimation_1_31_5b_heatmap.pdf 

#######################################################################################################################################################################
#######################################################################################################################################################################

computeMatrix scale-regions -S Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw -R FC_C1vsA3_down.bed --beforeRegionStartLength 3000 --regionBodyLength 5000 --afterRegionStartLength 3000 -o FC_C1vsA3_down_Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz_matrix.mat.gz

plotHeatmap -m FC_C1vsA3_down_Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz_matrix.mat.gz -out FC_C1vsA3_down_Acclimation_1_31_5b_heatmap.pdf 

#######################################################################################################################################################################

#computeMatrix scale-regions -S Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw -R FC_C1vsA3_up.bed --beforeRegionStartLength 3000 --regionBodyLength 5000 --afterRegionStartLength 3000 -o FC_C1vsA3_up_Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz_matrix.mat.gz

#plotHeatmap -m FC_C1vsA3_up_Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz_matrix.mat.gz -out FC_C1vsA3_up_Acclimation_1_31_5b_heatmap.pdf 

#######################################################################################################################################################################
#######################################################################################################################################################################

computeMatrix scale-regions -S Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw -R FC_C1vsC3_down.bed --beforeRegionStartLength 3000 --regionBodyLength 5000 --afterRegionStartLength 3000 -o FC_C1vsC3_down_Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz_matrix.mat.gz

plotHeatmap -m FC_C1vsC3_down_Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz_matrix.mat.gz -out FC_C1vsC3_down_Acclimation_1_31_5b_heatmap.pdf 

#######################################################################################################################################################################

#computeMatrix scale-regions -S Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw -R FC_C1vsC3_up.bed --beforeRegionStartLength 3000 --regionBodyLength 5000 --afterRegionStartLength 3000 -o FC_C1vsC3_up_Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz_matrix.mat.gz

#plotHeatmap -m FC_C1vsC3_up_Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz_matrix.mat.gz -out FC_C1vsC3_up_Acclimation_1_31_5b_heatmap.pdf 

#######################################################################################################################################################################
#######################################################################################################################################################################

computeMatrix scale-regions -S Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw -R FC_C3vsA3_down.bed --beforeRegionStartLength 3000 --regionBodyLength 5000 --afterRegionStartLength 3000 -o FC_C3vsA3_down_Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz_matrix.mat.gz

plotHeatmap -m FC_C3vsA3_down_Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz_matrix.mat.gz -out FC_C3vsA3_down_Acclimation_1_31_5b_heatmap.pdf 

#######################################################################################################################################################################

#computeMatrix scale-regions -S Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw -R FC_C3vsA3_up.bed --beforeRegionStartLength 3000 --regionBodyLength 5000 --afterRegionStartLength 3000 -o FC_C3vsA3_up_Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz_matrix.mat.gz

#plotHeatmap -m FC_C3vsA3_up_Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz_matrix.mat.gz -out FC_C3vsA3_up_Acclimation_1_31_5b_heatmap.pdf 

#######################################################################################################################################################################
#######################################################################################################################################################################







