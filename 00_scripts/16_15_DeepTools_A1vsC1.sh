#!/usr/bin/env bash

DATADIRECTORY=/home/stenger/stenger_data/EPIGENETIC_DATA/05_02_bismark

cd $DATADIRECTORY



###############################################################################################################################################################
###############################################################################################################################################################
 computeMatrix sample by sample
###############################################################################################################################################################
###############################################################################################################################################################


for FILE in $(ls $DATADIRECTORY/*.bam_sorted.bam.bw)
do
computeMatrix scale-regions -S ${FILE##*/} -R select_C1vsA1_p0_05_without_gene5615and26592.bed --beforeRegionStartLength 3000 --regionBodyLength 5000 --afterRegionStartLength 3000 -o ${FILE##*/}_select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz
done ;


#################################################################################################################################################################
###############################################################################################################################################################
# rbind pour obtenir une seule valeure par point d'échantillonnage
###############################################################################################################################################################
###############################################################################################################################################################


computeMatrixOperations rbind -m Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz Control_1_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz Control_1_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz \
 -o Control_1_30_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz

computeMatrixOperations rbind -m Acclimation_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz Acclimation_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz Acclimation_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz \
 -o Acclimation_3_30_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz

computeMatrixOperations rbind -m Acclimation_1_31_5c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz Acclimation_1_31_5b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz Acclimation_1_31_5a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz \
 -o Acclimation_1_31_5_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz

computeMatrixOperations rbind -m Control_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz Control_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz Control_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz \
 -o Control_3_30_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz
 
 
################################################################################################################################################################
################################################################################################################################################################
# cbind pour aligner les 4 temps d'echantillonnage
################################################################################################################################################################
################################################################################################################################################################

computeMatrixOperations cbind -m Acclimation_1_31_5_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz Acclimation_3_30_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz Control_1_30_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz Control_3_30_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz \
 -o select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz
 
plotHeatmap -m select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz \
     -out select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz.pdf 

plotHeatmap -m select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz \
     -out select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz_kmeans_04.pdf \
     --colorMap RdBu \
     --whatToShow 'plot, heatmap and colorbar' \
     --zMin -3 --zMax 3 \
     --kmeans 2 \
     --outFileSortedRegions select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz_kmeans_02.bed

plotHeatmap -m select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz \
     -out select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz_kmeans_04.pdf \
     --colorMap RdBu \
     --whatToShow 'plot, heatmap and colorbar' \
     --zMin -3 --zMax 3 \
     --kmeans 3 \
     --outFileSortedRegions select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz_kmeans_043.bed

plotHeatmap -m select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz \
     -out select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz_kmeans_04.pdf \
     --colorMap RdBu \
     --whatToShow 'plot, heatmap and colorbar' \
     --zMin -3 --zMax 3 \
     --kmeans 4 \
     --outFileSortedRegions select_C1vsA1_p0_05_without_gene5615and26592_matrix.mat.gz_kmeans_04.bed

