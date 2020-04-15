#!/usr/bin/env bash

#DATADIRECTORY=/home/stenger/stenger_data/EPIGENETIC_DATA/06_02_bismark_extractor
DATADIRECTORY=/home/stenger/stenger_data/EPIGENETIC_DATA/05_02_bismark

cd $DATADIRECTORY


##### For classical GBM (on all file from directly files)
for FILE in $(ls $DATADIRECTORY/*paired_bismark_bt2_pe.deduplicated.bed)

do

#awk '{print $1"\t"$2"\t"$3"\t"$4}' ${FILE##*/} > ${FILE##*/}.bed
#sed -i '1d' ${FILE##*/}.bed
bedtools intersect -a ${FILE##*/} -b corespondance.bed -wa -wb > ${FILE##*/}_correspondance.txt

done;


##### For GBM from differential for produce MDB score (like in Dixon et al. Role of gene body methylation in acclimatization and adaptation in a basal metazoan.)

for FILE in $(ls $DATADIRECTORY/*_unite_03.gff)

do
bedtools intersect -a ${FILE##*/} -b corespondance.bed -wa -wb > ${FILE##*/}_correspondance.txt
done;

