#!/usr/bin/env bash

DATADIRECTORY=/home/stenger/stenger_data/EPIGENETIC_DATA/05_02_bismark

cd $DATADIRECTORY

#for FILE in $(ls $DATADIRECTORY/*.bam_sorted.bam.bw)
#do

#computeMatrix scale-regions -S ${FILE##*/} -R real_gene_lenght_32469_all_exons_introns_02.bed --beforeRegionStartLength 3000 --regionBodyLength 5000 --afterRegionStartLength 3000 -o ${FILE##*/}_matrix.mat.gz

#done ;

#computeMatrixOperations rbind -m Acclimation_1_31_5a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_1_31_5c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o Acclimation_1_rbind_inversed_matrix.mat.gz

#computeMatrixOperations rbind -m Acclimation_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o Acclimation_3_rbind_inversed_matrix.mat.gz

#computeMatrixOperations rbind -m Acclimation_1_31_5b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o Control_1_rbind_inversed_matrix.mat.gz

#computeMatrixOperations rbind -m Acclimation_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_1_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o Control_3_rbind_inversed_matrix.mat.gz

#computeMatrixOperations cbind -m Acclimation_1_rbind_inversed_matrix.mat.gz Acclimation_3_rbind_inversed_matrix.mat.gz Control_1_rbind_inversed_matrix.mat.gz Control_3_rbind_inversed_matrix.mat.gz -o all_genes_cbind_inversed_matrix.mat.gz

#computeMatrixOperations rbind -m Acclimation_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o Control_3_rbind_inversed_matrix.mat.gz

 
#plotHeatmap -m all_genes_cbind_inversed_matrix.mat.gz -out all_genes_cbind_inversed_matrix.mat.gz.pdf 
#
#plotHeatmap -m all_genes_cbind_inversed_matrix.mat.gz \
#     -out all_genes_cbind_inversed_matrix.mat.gz_kmeans_02.pdf \
#     --colorMap RdBu \
#     --whatToShow 'plot, heatmap and colorbar' \
#     --zMin -3 --zMax 3 \
#     --kmeans 2 \
#     --outFileSortedRegions all_genes_cbind_inversed_matrix.mat.gz_kmeans_02.bed
#
#plotHeatmap -m all_genes_cbind_inversed_matrix.mat.gz \
#     -out all_genes_cbind_inversed_matrix.mat.gz_kmeans_03.pdf \
#     --colorMap RdBu \
#     --whatToShow 'plot, heatmap and colorbar' \
#     --zMin -3 --zMax 3 \
#     --kmeans 3 \
#     --outFileSortedRegions all_genes_cbind_inversed_matrix.mat.gz_kmeans_03.bed
#
#plotHeatmap -m all_genes_cbind_inversed_matrix.mat.gz \
#     -out all_genes_cbind_inversed_matrix.mat.gz_kmeans_04.pdf \
#     --colorMap RdBu \
#     --whatToShow 'plot, heatmap and colorbar' \
#     --zMin -3 --zMax 3 \
#     --kmeans 4 \
#     --outFileSortedRegions all_genes_cbind_inversed_matrix.mat.gz_kmeans_04.bed
#     
     
#computeMatrixOperations rbind -m Acclimation_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o Control_3_rbind_inversed_matrix1.mat.gz
#
#plotHeatmap -m Control_3_rbind_inversed_matrix.mat1.gz \
#     -out Control_3_rbind_inversed_matrix.mat1.gz_kmeans_04.pdf \
#     --colorMap RdBu \
#     --whatToShow 'plot, heatmap and colorbar' \
#     --zMin -3 --zMax 3 \
#     --kmeans 4 \
#     --outFileSortedRegions Control_3_rbind_inversed_matrix.mat1.gz_kmeans_04.bed
#     
#computeMatrixOperations rbind -m Acclimation_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Control_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o Control_3_rbind_inversed_matrix.mat2.gz
#
#plotHeatmap -m Control_3_rbind_inversed_matrix.mat2.gz \
#     -out Control_3_rbind_inversed_matrix.mat2.gz_kmeans_04.pdf \
#     --colorMap RdBu \
#     --whatToShow 'plot, heatmap and colorbar' \
#     --zMin -3 --zMax 3 \
#     --kmeans 4 \
#     --outFileSortedRegions Control_3_rbind_inversed_matrix.mat2.gz_kmeans_04.bed
#     
#computeMatrixOperations rbind -m Control_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o Control_3_rbind_inversed_matrix.mat3.gz
#
#plotHeatmap -m Control_3_rbind_inversed_matrix.mat3.gz \
#     -out Control_3_rbind_inversed_matrix.mat3.gz_kmeans_04.pdf \
#     --colorMap RdBu \
#     --whatToShow 'plot, heatmap and colorbar' \
#     --zMin -3 --zMax 3 \
#     --kmeans 4 \
#     --outFileSortedRegions Control_3_rbind_inversed_matrix.mat3.gz_kmeans_04.bed   
	
	
	
	
computeMatrixOperations rbind -m Acclimation_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o Control_3_rbind_inversed_matrix.mat4.gz

plotHeatmap -m Control_3_rbind_inversed_matrix.mat4.gz \
     -out Control_3_rbind_inversed_matrix.mat4.gz_kmeans_04.pdf \
     --colorMap RdBu \
     --whatToShow 'plot, heatmap and colorbar' \
     --zMin -3 --zMax 3 \
     --kmeans 4 \
     --outFileSortedRegions Control_3_rbind_inversed_matrix.mat4.gz_kmeans_04.bed  

computeMatrixOperations rbind -m Acclimation_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz Acclimation_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -o Control_3_rbind_inversed_matrix.mat5.gz

plotHeatmap -m Control_3_rbind_inversed_matrix.mat5.gz \
     -out Control_3_rbind_inversed_matrix.mat4.gz_kmeans_05.pdf \
     --colorMap RdBu \
     --whatToShow 'plot, heatmap and colorbar' \
     --zMin -3 --zMax 3 \
     --kmeans 4 \
     --outFileSortedRegions Control_3_rbind_inversed_matrix.mat4.gz_kmeans_05.bed  
     
