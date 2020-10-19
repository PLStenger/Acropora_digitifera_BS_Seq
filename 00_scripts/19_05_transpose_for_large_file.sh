#!/usr/bin/env bash

DATADIRECTORY=/home/stenger/stenger_data/99_software/angsd

cd $DATADIRECTORY

awk -f BEGIN { FS=OFS="\t" }
{ printf "%s%s", (FNR>1 ? OFS : ""), $ARGIND }
ENDFILE {
    print ""
    if (ARGIND < NF) {
        ARGV[ARGC] = FILENAME
        ARGC++
    }
} outfile.geno_02_good_column_nb_header_newline.txt > outfile.geno_02_good_column_nb_header_newline_transpose.txt


