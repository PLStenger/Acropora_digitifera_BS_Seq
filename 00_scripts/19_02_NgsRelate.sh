#!/usr/bin/env bash

DATADIRECTORY=/home/stenger/stenger_data/99_software/angsd

cd $DATADIRECTORY

## ANGSD official paper: https://bmcbioinformatics.biomedcentral.com/articles/10.1186/s12859-014-0356-4
## NgsRelate : https://github.com/ANGSD/NgsRelate


### First we generate a file with allele frequencies (angsdput.mafs.gz) and a file with genotype likelihoods (angsdput.glf.gz).
./angsd -b bam.filelist -gl 2 -domajorminor 1 -snp_pval 1e-6 -domaf 1 -minmaf 0.05 -doGlf 3

### Then we extract the frequency column from the allele frequency file and remove the header (to make it in the format NgsRelate needs)
zcat angsdput.mafs.gz | cut -f5 |sed 1d >freq

### run NgsRelate
./ngsrelate  -g angsdput.glf.gz -n 100 -f freq  -O newres
