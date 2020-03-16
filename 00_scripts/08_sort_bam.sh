#!/usr/bin/env bash

DATADIRECTORY=/home/stenger/stenger_data/EPIGENETIC_DATA/05_bismark

cd $DATADIRECTORY

for FILE in $(ls $DATADIRECTORY/*deduplicate.bam)

do

samtools sort ${FILE##*/} > ${FILE##*/}_sorted.bam

done;
