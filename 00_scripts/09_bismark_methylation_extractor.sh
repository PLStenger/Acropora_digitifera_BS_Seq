#!/usr/bin/env bash

DATADIRECTORY=/home/stenger/stenger_data/EPIGENETIC_DATA/05_02_bismark
OUTPUT=/home/stenger/stenger_data/EPIGENETIC_DATA/06_02_bismark_extractor
GENOME=/home/stenger/stenger_data/NEW_GENOME_ADIG2020/GCF_000222465.1_Adig_1.1_genomic_fna/GCF_000222465.1_Adig_1.1_genomic_fna
NCPU=4

cd $DATADIRECTORY

for FILE in $(ls $DATADIRECTORY/*deduplicated.bam)
do
bismark_methylation_extractor -p --no_overlap --bedGraph --scaffolds --cytosine_report --genome_folder $GENOME --multicore $NCPU $DATADIRECTORY/${FILE##*/} -o $OUTPUT
done ;


#bismark_methylation_extractor -p --no_overlap --bedGraph --scaffolds --cytosine_report --genome_folder $GENOME --multicore $NCPU $DATADIRECTORY/Acclimation_1_31_5a_R1_paired_bismark_bt2_pe.deduplicated.bam -o $OUTPUT
