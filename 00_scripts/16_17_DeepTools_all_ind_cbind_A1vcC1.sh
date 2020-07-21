#!/usr/bin/env bash

DATADIRECTORY=/home/stenger/stenger_data/EPIGENETIC_DATA/05_02_bismark

cd $DATADIRECTORY

for FILE in $(ls $DATADIRECTORY/*.bam_sorted.bam.bw)
do

computeMatrix scale-regions -S ${FILE##*/} -R select_C1vsA1_p0_05.bed --beforeRegionStartLength 3000 --regionBodyLength 5000 --afterRegionStartLength 3000 -o ${FILE##*/}_select_C1vsA1_p0_05_matrix.mat.gz

done ;

computeMatrixOperations cbind -m Acclimation_1_31_5a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_matrix.mat.gz Acclimation_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_matrix.mat.gz Control_1_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_matrix.mat.gz Control_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_matrix.mat.gz Acclimation_1_31_5b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_matrix.mat.gz Acclimation_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_matrix.mat.gz Control_1_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_matrix.mat.gz Control_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_matrix.mat.gz Acclimation_1_31_5c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_matrix.mat.gz Acclimation_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_matrix.mat.gz Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_matrix.mat.gz Control_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_matrix.mat.gz -o all_individuals_cbind_select_C1vsA1_p0_05_matrix.mat.gz
 
plotHeatmap -m all_individuals_cbind_select_C1vsA1_p0_05_matrix.mat.gz -out all_individuals_cbind_select_C1vsA1_p0_05_matrix.mat.gz.pdf 

plotHeatmap -m all_individuals_cbind_select_C1vsA1_p0_05_matrix.mat.gz \
     -out all_individuals_cbind_select_C1vsA1_p0_05_matrix.mat.gz_kmeans_02.pdf \
     --colorMap RdBu \
     --whatToShow 'plot, heatmap and colorbar' \
     --zMin -3 --zMax 3 \
     --kmeans 2 \
     --outFileSortedRegions all_individuals_cbind_select_C1vsA1_p0_05_matrix.mat.gz_kmeans_02.bed

plotHeatmap -m all_individuals_cbind_select_C1vsA1_p0_05_matrix.mat.gz \
     -out all_individuals_cbind_select_C1vsA1_p0_05_matrix.mat.gz_kmeans_03.pdf \
     --colorMap RdBu \
     --whatToShow 'plot, heatmap and colorbar' \
     --zMin -3 --zMax 3 \
     --kmeans 3 \
     --outFileSortedRegions all_individuals_cbind_select_C1vsA1_p0_05_matrix.mat.gz_kmeans_03.bed

plotHeatmap -m all_individuals_cbind_select_C1vsA1_p0_05_matrix.mat.gz \
     -out all_individuals_cbind_select_C1vsA1_p0_05_matrix.mat.gz_kmeans_04.pdf \
     --colorMap RdBu \
     --whatToShow 'plot, heatmap and colorbar' \
     --zMin -3 --zMax 3 \
     --kmeans 4 \
     --outFileSortedRegions all_individuals_cbind_select_C1vsA1_p0_05_matrix.mat.gz_kmeans_04.bed
