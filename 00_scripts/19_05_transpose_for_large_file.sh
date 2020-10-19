#!/usr/bin/env bash

DATADIRECTORY=/home/stenger/stenger_data/99_software/angsd

cd $DATADIRECTORY

awk '{for (i=1; i<=NF; i++) a[i,NR]=$i
        max=(max<NF?NF:max)}
        END {for (i=1; i<=max; i++)
              {for (j=1; j<=NR; j++) 
                  printf "%s%s", a[i,j], (j==NR?RS:FS)
              }
        }'  outfile.geno_02_good_column_nb_header_newline.txt > outfile.geno_02_good_column_nb_header_newline_transpose.txt


