#!/usr/bin/env bash

DATADIRECTORY=/home/stenger/stenger_data/EPIGENETIC_DATA/05_02_bismark

cd $DATADIRECTORY

computeMatrix scale-regions -S Acclimation_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw -R scaffold_gene_lenght_02.bed  --beforeRegionStartLength 3000 --regionBodyLength 5000 --afterRegionStartLength 3000 -o Acclimation_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz

plotProfile -m Acclimation_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam.bw_matrix.mat.gz -out Acclimation_3_30a.pdf --plotTitle "Acclimation_3_30a" --plotHeight 10 --plotWidth 10

