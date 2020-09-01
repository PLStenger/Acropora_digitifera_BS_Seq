#!/usr/bin/env bash

DATADIRECTORY=/home/stenger/stenger_data/EPIGENETIC_DATA/06_02_bismark_extractor

cd $DATADIRECTORY

for FILE in $(ls $DATADIRECTORY/*CpG_report.bed)
do

bedtools intersect -b ${FILE##*/} -a A_digitifera_genomic_elements.txt_gene_upstream.gff3 -wa -wb > ${FILE##*/}_gene_upstream.gff
bedtools intersect -b ${FILE##*/} -a A_digitifera_genomic_elements.txt_gene_downstream.gff3 -wa -wb > ${FILE##*/}_gene_downstream.gff
bedtools intersect -b ${FILE##*/} -a A_digitifera_genomic_elements.txt_gene.gff3 -wa -wb > ${FILE##*/}_gene.gff
bedtools intersect -b ${FILE##*/} -a A_digitifera_genomic_elements.txt_exon.gff3 -wa -wb > ${FILE##*/}_exon.gff

done ;
