#!/usr/bin/env bash

DATADIRECTORY=/home/stenger/stenger_data/99_software/angsd

cd $DATADIRECTORY

awk '{ for (i=1; i<=NF; i++) RtoC[i]= (RtoC[i]? RtoC[i] FS $i: $i) }
    END{ for (i in RtoC) print RtoC[i] }'  outfile.geno_02_good_column_nb_header_newline.txt > outfile.geno_02_good_column_nb_header_newline_transpose.txt


