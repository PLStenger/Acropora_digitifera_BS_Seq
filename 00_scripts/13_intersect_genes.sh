#!/usr/bin/env bash

DATADIRECTORY=/home/stenger/stenger_data/EPIGENETIC_DATA/05_02_bismark
DATABASE=/home/stenger/stenger_data/NEW_GENOME_ADIG2020/00_custom/Database_ID_gene_from_BS_unique.txt

# Creation database "unique" by R:
# Database_ID_gene_from_BS <- read.table("Database_ID_gene_from_BS.txt", header=T)
# head(Database_ID_gene_from_BS)
# for (i in 1:length(unique(Database_ID_gene_from_BS$scaffold))){
#  sink("Database_ID_gene_from_BS_unique.txt", append=TRUE)
#  print(c(as.character(unique(Database_ID_gene_from_BS$scaffold)[i]), min(unique(Database_ID_gene_from_BS$start)[i]), max(unique(Database_ID_gene_from_BS$stop)[i])))
#  sink()
#  }

cd $DATADIRECTORY

rm *txt_intersect_genes*
rm *work_in_progress*


for FILE in $(ls $DATADIRECTORY/*diff25*)

do

awk '{print $2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8}' ${FILE##*/} > ${FILE##*/}_work_in_progress_01.txt
# Need this step in MacOS, not in Linux (don't know why..)
#sed -i '1d' ${FILE##*/}_work_in_progress_01.txt > ${FILE##*/}_work_in_progress_02.txt
bedtools intersect -a $DATABASE -b ${FILE##*/}_work_in_progress_01.txt > ${FILE##*/}_work_in_progress_03.txt
paste ${FILE##*/}_work_in_progress_03.txt ${FILE##*/}_work_in_progress_01.txt > ${FILE##*/}_intersect_genes.txt

rm ${FILE##*/}_work_in_progress_*.txt

done;
