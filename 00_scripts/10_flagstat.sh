#!/usr/bin/env bash

DATADIRECTORY=/home/stenger/stenger_data/EPIGENETIC_DATA/05_02_bismark

cd $DATADIRECTORY

for FILE in $(ls $DATADIRECTORY/*.bam)

do

samtools flagstat ${FILE##*/} > ${FILE##*/}_flagstat.txt

done;
