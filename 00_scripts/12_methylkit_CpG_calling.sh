#!/usr/bin/env bash

DATADIRECTORY=/home/stenger/stenger_data/EPIGENETIC_DATA/05_bismark
OUTPUT=/home/stenger/stenger_data/EPIGENETIC_DATA/07_methylkit

SCRIPT_FOLDER=/home/stenger/stenger_data/EPIGENETIC_DATA/Acropora_digitifera_BS_Seq/00_scripts

cd $DATADIRECTORY


SCRIPT_R=/home/stenger/stenger_data/EPIGENETIC_DATA/Acropora_digitifera_BS_Seq/00_scripts/12_methylkit_CpG_calling_diff20_qval0_05.R

Rscript --vanilla $SCRIPT_R > ${SCRIPT_FOLDER}/12_methylkit_CpG_calling_diff20_qval0_05.out

