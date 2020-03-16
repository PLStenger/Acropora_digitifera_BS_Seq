#!/usr/bin/env bash


DATADIRECTORY=/home/stenger/stenger_data/EPIGENETIC_DATA/05_bismark

deduplicate_bismark --bam $DATADIRECTORY/Acclimation_1_31_5a_R1_paired_bismark_bt2_pe.bam > $DATADIRECTORY/Acclimation_1_31_5a_R1_paired_bismark_bt2_pe_deduplicate.bam

