#!/usr/bin/env bash

DATADIRECTORY=/home/stenger/stenger_data/EPIGENETIC_DATA/06_02_bismark_extractor

cd $DATADIRECTORY

for FILE in $(ls $DATADIRECTORY/*paired_bismark_bt2_pe.deduplicated.bed)

do

#awk '{print $1"\t"$2"\t"$3"\t"$4}' ${FILE##*/} > ${FILE##*/}.bed
#sed -i '1d' ${FILE##*/}.bed
bedtools intersect -a ${FILE##*/} -b corespondance.bed -wa -wb > ${FILE##*/}_correspondance.txt

done;


