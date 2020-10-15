#!/usr/bin/env bash

DATADIRECTORY=/home/stenger/stenger_data/99_software/angsd

cd $DATADIRECTORY

# Use file from 19_chimeras_check_by_ANGSD.sh script,
# From this part:
# in order to obtain a file that I could use as input for adegenet (R) for AMOVA:
# https://popgen.nescent.org/DifferentiationSNP.html
# from http://www.popgen.dk/angsd/index.php/Genotype_calling
#./angsd -bam bam.filelist -GL 1 -out outfile -doMaf 2 -doMajorMinor 1 -SNP_pval 0.000001 -doGeno 5 -doPost 1 -postCutoff 0.95



awk '{print $1"_"$2"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"$10"\t"$11"\t"$12"\t"$13"\t"$14"\t"$15"\t"$16}' /home/stenger/stenger_data/99_software/angsd/outfile.geno > /home/stenger/stenger_data/99_software/angsd/outfile.geno_02_good_column_nb.txt

# Change dots by underscore because a problem will appears later in R
awk -F. '{print $1"_"$2}' /home/stenger/stenger_data/99_software/angsd/outfile.geno_02_good_column_nb.txt > /home/stenger/stenger_data/99_software/angsd/outfile.geno_02_good_column_nb_02.txt

sed $'1s/^/sub_population\tSNP_sub_clade_01\tSNP_sub_clade_02\tSNP_sub_clade_01\tSNP_sub_clade_03\tSNP_sub_clade_03\tSNP_sub_clade_03\tSNP_sub_clade_01\tSNP_sub_clade_02\tSNP_sub_clade_01\tSNP_sub_clade_03\tSNP_sub_clade_02\tSNP_sub_clade_02/' /home/stenger/stenger_data/99_software/angsd/outfile.geno_02_good_column_nb_02.txt > /home/stenger/stenger_data/99_software/angsd/outfile.geno_02_good_column_nb_pop.txt

sed 's/SNP_sub_clade_02NW/SNP_sub_clade_02\'$'\nNW/g' /home/stenger/stenger_data/99_software/angsd/outfile.geno_02_good_column_nb_pop.txt > /home/stenger/stenger_data/99_software/angsd/outfile.geno_02_good_column_nb_pop_02.txt


sed $'1s/^/population\tSNP_clade_01\tSNP_clade_02\tSNP_clade_01\tSNP_clade_02\tSNP_clade_02\tSNP_clade_02\tSNP_clade_01\tSNP_clade_02\tSNP_clade_01\tSNP_clade_02\tSNP_clade_02\tSNP_clade_02/' /home/stenger/stenger_data/99_software/angsd/outfile.geno_02_good_column_nb_pop_02.txt > /home/stenger/stenger_data/99_software/angsd/outfile.geno_02_good_column_nb_pop.txt

sed 's/SNP_clade_02sub_population/SNP_clade_02\'$'\nsub_population/g' /home/stenger/stenger_data/99_software/angsd/outfile.geno_02_good_column_nb_pop.txt > /home/stenger/stenger_data/99_software/angsd/outfile.geno_02_good_column_nb_pop_02.txt

sed $'1s/^/individuals\tAcclimation_1_31_5a\tAcclimation_1_31_5b\tAcclimation_1_31_5c\tAcclimation_3_30a\tAcclimation_3_30b\tAcclimation_3_30c\tControl_1_30a\tControl_1_30b\tControl_1_30c\tControl_3_30a\tControl_3_30b\tControl_3_30c/' /home/stenger/stenger_data/99_software/angsd/outfile.geno_02_good_column_nb_pop_02.txt > /home/stenger/stenger_data/99_software/angsd/outfile.geno_02_good_column_nb_pop_header.txt

sed 's/Control_3_30c/Control_3_30c\'$'\n/g' /home/stenger/stenger_data/99_software/angsd/outfile.geno_02_good_column_nb_pop_header.txt > /home/stenger/stenger_data/99_software/angsd/outfile.geno_02_good_column_nb_header_newline.txt

# Run "transpose.sh" bash script :

################################################################################################################################


awk '
{ 
    for (i=1; i<=NF; i++)  {
        a[NR,i] = $i
    }
}
NF>p { p = NF }
END {    
    for(j=1; j<=p; j++) {
        str=a[1,j]
        for(i=2; i<=NR; i++){
            str=str" "a[i,j];
        }
        print str
    }
}' /home/stenger/stenger_data/99_software/angsd/outfile.geno_02_good_column_nb_header_newline.txt > /home/stenger/stenger_data/99_software/angsd/outfile.geno_02_good_column_nb_header_newline_transpose.txt

################################################################################################################################

sed $'s/ /\t/g' /home/stenger/stenger_data/99_software/angsd/outfile.geno_02_good_column_nb_header_newline_transpose.txt > /home/stenger/stenger_data/99_software/angsd/outfile.geno_02_good_column_nb_header_newline_transpose_ok.txt





