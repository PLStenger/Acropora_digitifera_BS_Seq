#!/usr/bin/env bash

DATADIRECTORY=/home/stenger/stenger_data/EPIGENETIC_DATA/06_02_bismark_extractor

cd $DATADIRECTORY

for FILE in $(ls $DATADIRECTORY/*_correspondance.txt)
do

awk '{print $9"\t"$4}' ${FILE##*/} > ${FILE##*/}_clean.txt

done ;



for FILE in $(ls $DATADIRECTORY/*_clean.txt)
do

# count the number of position for each gene
awk -F '\t' '{print $1}' ${FILE##*/} | sort | uniq -c > ${FILE##*/}_mean_02.txt
# sum of the value for each gene
awk -F '\t' '{a[$1] += $2} END{for (i in a) print i, a[i]}' ${FILE##*/} | sort > ${FILE##*/}_mean_01.txt
# merge the data frame
paste ${FILE##*/}_mean_01.txt ${FILE##*/}_mean_02.txt > ${FILE##*/}_mean_03.txt
# calculate the means for GBM
awk '{print $1"\t"$2/$3}' ${FILE##*/}_mean_03.txt > ${FILE##*/}_GBM.txt

done ;
