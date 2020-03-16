#!/usr/bin/env bash

DATADIRECTORY=/home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed
OUTPUT=/home/stenger/stenger_data/EPIGENETIC_DATA/04_fastqc_trimmed

cd $DATADIRECTORY

for FILE in $(ls $DATADIRECTORY/*fastq.gz)

do

fastqc ${FILE##*/} -o $OUTPUT

done;

#fastqc /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_1_31_5a_R1_paired.fastq.gz -o ~/stenger_data/EPIGENETIC_DATA/04_fastqc_trimmed


