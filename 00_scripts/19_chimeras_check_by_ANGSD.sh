#!/usr/bin/env bash

DATADIRECTORY=/home/stenger/stenger_data/99_software/angsd

cd $DATADIRECTORY

## ANGSD official paper: https://bmcbioinformatics.biomedcentral.com/articles/10.1186/s12859-014-0356-4

## programme installation from https://github.com/ANGSD/angsd with
# cd /home/stenger/stenger_data/99_software
# git clone https://github.com/samtools/htslib.git;
# git clone https://github.com/angsd/angsd.git;
# cd htslib;make;cd ../angsd;make HTSSRC=../htslib

# I wanted to assign genotype likelihoods of my BAM files. So, see http://www.popgen.dk/angsd/index.php/Genotype_Likelihoods for instructions

# Then I created a file named "bam.filelist" and I put all BAM files names and path (one by row) like it's asked here : http://www.popgen.dk/angsd/index.php/Input#BAM_files
# This file was put in the /home/stenger/stenger_data/99_software/angsd folder

# GL format
#	-GL=0: 
#	1: SAMtools
#	2: GATK
#	3: SOAPsnp
#	4: SYK
#	5: phys
#	6: Super simple sample an allele type GL. (1.0,0.5,0.0)
#	7: outgroup gls

# However here it's methylated data, and there is no Bismark aligner.. So trying first with SAMtools (-GL 1)

# Run the command line (command line find here: http://www.popgen.dk/angsd/index.php/ANGSD and output format find here: https://github.com/ANGSD/NgsRelate)

./angsd -out angsdput.glf.gz -bam bam.filelist -GL 1 -doMaf 1 -doMajorMinor 1 -nThreads 10

