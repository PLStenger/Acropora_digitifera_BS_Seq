#!/usr/bin/env bash

DATADIRECTORY=/home/stenger/stenger_data/EPIGENETIC_DATA/05_02_bismark
DATABASE=/home/stenger/stenger_data/NEW_GENOME_ADIG2020/00_custom/Database_ID_gene_from_BS_unique_02.txt

#Database_ID_gene_from_BS <- read.table("Database_ID_gene_from_BS_02.txt", header=T)
#head(Database_ID_gene_from_BS)
#str(Database_ID_gene_from_BS)
#Database_ID_gene_from_BS$gene_id <- as.character(Database_ID_gene_from_BS$gene_id)
#Database_ID_gene_from_BS$scaffold <- as.character(Database_ID_gene_from_BS$scaffold)
#Database_ID_gene_from_BS$start <- as.numeric(Database_ID_gene_from_BS$start)
#Database_ID_gene_from_BS$stop <- as.numeric(Database_ID_gene_from_BS$stop)
#str(Database_ID_gene_from_BS)

#for (i in 1:length(unique(Database_ID_gene_from_BS$gene_id))){
#  sink("Database_ID_gene_from_BS_unique_02.txt", append=TRUE)
#  
#  temp <- filter(Database_ID_gene_from_BS, Database_ID_gene_from_BS$gene_id  == unique(Database_ID_gene_from_BS$gene_id)[i])
#  gene_id <- as.character(unique(temp$gene_id))
#  start <- min((temp$start))
#  stop <- max((temp$stop))
#  scaffold <- as.character(unique(temp$scaffold))
#  print(c(as.character(gene_id), as.numeric(start), as.numeric(stop), as.character(scaffold)))
#   sink()
#}


#cd $DATADIRECTORY
#
#rm *txt_intersect_genes*
#rm *work_in_progress*
#
#
#for FILE in $(ls $DATADIRECTORY/*diff25*)
#
#do
#
#awk '{print $2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8}' ${FILE##*/} > ${FILE##*/}_work_in_progress_01.txt
#sed -i '1d' ${FILE##*/}_work_in_progress_01.txt
#bedtools intersect -a ${FILE##*/}_work_in_progress_01.txt -b $DATABASE -loj > ${FILE##*/}_intersect_genes.txt
#sed -i '1s/^/chr	start	end	strand	pvalue	qvalue	meth.diff	scaffold	start	end	gene\n/' ${FILE##*/}_intersect_genes.txt
#rm ${FILE##*/}_work_in_progress_*.txt
#
#done;


cd $DATADIRECTORY

#rm *txt_intersect_genes*
rm *work_in_progress*


#for FILE in $(ls $DATADIRECTORY/*diff20*)
#for FILE in $(ls $DATADIRECTORY/*_Allmeth.norm_unite.txt)

#do

#awk '{print $2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8}' ${FILE##*/} > ${FILE##*/}_work_in_progress_01.txt
#sed -i '1d' ${FILE##*/}_work_in_progress_01.txt
#bedtools intersect -a ${FILE##*/}_work_in_progress_01.txt -b $DATABASE -loj > ${FILE##*/}_intersect_genes.txt
#sed -i '1s/^/chr	start	end	strand	pvalue	qvalue	meth.diff	scaffold	start	end	gene\n/' ${FILE##*/}_intersect_genes.txt
#rm ${FILE##*/}_work_in_progress_*.txt

#done;




for FILE in $(ls $DATADIRECTORY/mydmr_Diffmeth_*)

do

awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"$10}' ${FILE##*/} > ${FILE##*/}_work_in_progress_01.txt
sed -i '1d' ${FILE##*/}_work_in_progress_01.txt
bedtools intersect -a ${FILE##*/}_work_in_progress_01.txt -b $DATABASE -loj > ${FILE##*/}_intersect_genes.txt
sed -i '1s/^/chr	start	end	strand	pvalue	qvalue	meth.diff	scaffold	start	end	gene\n/' ${FILE##*/}_intersect_genes.txt
rm ${FILE##*/}_work_in_progress_*.txt

done;


