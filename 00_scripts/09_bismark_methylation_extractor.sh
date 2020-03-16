#!/usr/bin/env bash

DATADIRECTORY=/home/stenger/stenger_data/EPIGENETIC_DATA/05_bismark
OUTPUT=/home/stenger/stenger_data/EPIGENETIC_DATA/06_bismark_extractor
GENOME=/home/stenger/stenger_data/NEW_GENOME_ADIG2020/GCF_000222465.1_Adig_1.1_genomic_fna/GCF_000222465.1_Adig_1.1_genomic_fna
NCPU=4

cd $DATADIRECTORY

for FILE in $(ls $DATADIRECTORY/*_sorted.bam)

do

bismark_methylation_extractor -p --no_overlap --bedGraph --scaffolds --cytosine_report --genome_folder $GENOME --multicore $NCPU $DATADIRECTORY/${FILE##*/} -o $OUTPUT

done ;
