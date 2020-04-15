#!/usr/bin/env bash

#DATADIRECTORY=/home/stenger/stenger_data/EPIGENETIC_DATA/06_02_bismark_extractor
DATADIRECTORY=/home/stenger/stenger_data/EPIGENETIC_DATA/05_02_bismark

cd $DATADIRECTORY


# ##### For classical GBM (on all file from directly files)
# from 14_interesect_bed_for_methylome_characterisation.sh
#for FILE in $(ls $DATADIRECTORY/*_correspondance.txt)
#do

#awk '{print $9"\t"$4}' ${FILE##*/} > ${FILE##*/}_clean.txt

#done ;



#for FILE in $(ls $DATADIRECTORY/*_clean.txt)
#do

## count the number of position for each gene
#awk -F '\t' '{print $1}' ${FILE##*/} | sort | uniq -c > ${FILE##*/}_mean_02.txt
## sum of the value for each gene
#awk -F '\t' '{a[$1] += $2} END{for (i in a) print i, a[i]}' ${FILE##*/} | sort > ${FILE##*/}_mean_01.txt
## merge the data frame
#paste ${FILE##*/}_mean_01.txt ${FILE##*/}_mean_02.txt > ${FILE##*/}_mean_03.txt
## calculate the means for GBM
#awk '{print $1"\t"$2/$3}' ${FILE##*/}_mean_03.txt > ${FILE##*/}_GBM.txt

#done ;



##### For GBM from differential for produce MDB score (like in Dixon et al. Role of gene body methylation in acclimatization and adaptation in a basal metazoan.)
# From 14_interesect_bed_for_methylome_characterisation.sh



for FILE in $(ls $DATADIRECTORY/*norm_unite_03.gff_correspondance_02.txt)
do

# count the number of position for each gene
awk -F '\t' '{print $1}' ${FILE##*/} | sort | uniq -c > ${FILE##*/}_mean_02.txt
# sum of the value for each gene
awk -F '\t' '{a[$1] += $2} END{for (i in a) print i, a[i]}' ${FILE##*/} | sort > ${FILE##*/}_mean_01.txt
# merge the data frame
paste ${FILE##*/}_mean_01.txt ${FILE##*/}_mean_02.txt > ${FILE##*/}_mean_03.txt
# calculate the means for GBM
awk '{print $1"\t"$2/$3}' ${FILE##*/}_mean_03.txt > ${FILE##*/}_GBM.txt

done ;
