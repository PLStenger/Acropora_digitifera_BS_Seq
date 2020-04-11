#!/usr/bin/env bash

DATADIRECTORY=/home/stenger/stenger_data/EPIGENETIC_DATA/08_RNA_Seq_link
OUTPUT=/home/stenger/stenger_data/EPIGENETIC_DATA/08_RNA_Seq_link

SCRIPT_FOLDER=/home/stenger/stenger_data/EPIGENETIC_DATA/Acropora_digitifera_BS_Seq/00_scripts

cd $DATADIRECTORY


SCRIPT_R=/home/stenger/stenger_data/EPIGENETIC_DATA/Acropora_digitifera_BS_Seq/00_scripts/17_WGCNA_on_RNA_Seq.R

Rscript --vanilla $SCRIPT_R > ${SCRIPT_FOLDER}/17_WGCNA_on_RNA_Seq.out
