#!/usr/bin/env bash

DATADIRECTORY=/home/stenger/stenger_data/EPIGENETIC_DATA/05_02_bismark

cd $DATADIRECTORY

for FILE in $(ls $DATADIRECTORY/Diffmeth_*.txt)

do

awk '{print $2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8}' ${FILE##*/} > ${FILE##*/}_work_in_progress_01.txt
sed -i '1d' ${FILE##*/}_work_in_progress_01.txt > ${FILE##*/}_work_in_progress_02.txt
bedtools intersect -a test_data.base.txt -b ${FILE##*/}_work_in_progress_02.txt > ${FILE##*/}_work_in_progress_03.txt
paste ${FILE##*/}_work_in_progress_03.txt ${FILE##*/}_work_in_progress_02.txt > ${FILE##*/}_intersect_genes.txt

done;
