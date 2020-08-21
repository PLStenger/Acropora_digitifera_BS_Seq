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

#./angsd -out angsdput.glf.gz -bam bam.filelist -GL 1 -doMaf 1 -doMajorMinor 1 -nThreads 10

# I put the resulst here /home/stenger/stenger_data/EPIGENETIC_DATA/10_chimeras

# head angsdput.glf.gz.mafs

# chromo	position	major	minor	knownEM	nInd
# NW_015441057.1	11	G	A	0.000001	1
# NW_015441057.1	12	T	A	0.000003	2
# NW_015441057.1	13	T	A	0.000003	2
# NW_015441057.1	14	T	A	0.000007	4
# NW_015441057.1	15	T	A	0.000007	4
# NW_015441057.1	16	A	C	0.000007	4
# NW_015441057.1	17	A	C	0.000004	5
# NW_015441057.1	18	T	A	0.000004	5
# NW_015441057.1	19	T	A	0.000004	5

# Max nInd = 12
# wc -l angsdput.glf.gz.mafs
# 303983761 angsdput.glf.gz.mafs

# Trying Beagle format
# http://www.popgen.dk/angsd/index.php/Genotype_Likelihoods#Output
#./angsd -GL 1 -out genolike -nThreads 10 -doGlf 2 -doMajorMinor 1  -doMaf 2 -SNP_pval 2e-6 -bam bam.filelist

# (base) stenger@sarah-Wild-Dog-Pro:~/stenger_data/EPIGENETIC_DATA/10_chimeras$ head genolike.mafs
# chromo	position	major	minor	unknownEM	pu-EM	nInd
# NW_015441057.1	38	T	C	0.082015	2.497617e-07	5
# NW_015441057.1	45	T	C	0.293231	3.871244e-07	8
# NW_015441057.1	50	G	A	0.274230	4.646336e-07	8
# NW_015441057.1	55	T	C	0.274229	4.646343e-07	8
# NW_015441057.1	56	T	C	0.274229	4.646343e-07	8
# NW_015441057.1	57	G	A	0.274229	4.646343e-07	8
# NW_015441057.1	58	T	C	0.259648	5.429251e-07	8
# NW_015441057.1	60	T	C	0.292648	7.131057e-08	8
# NW_015441057.1	69	T	C	0.295023	1.582572e-07	8

# (base) stenger@sarah-Wild-Dog-Pro:~/stenger_data/EPIGENETIC_DATA/10_chimeras$ wc -l genolike.mafs
# 76384176 genolike.mafs

# head genolike.beagle
# (allele codes as 0=A, 1=C, 2=G, 3=T)

# marker	allele1	allele2	Ind0	Ind0	Ind0	Ind1	Ind1	Ind1	Ind2	Ind2	Ind2	Ind3	Ind3	Ind3	Ind4	Ind4	Ind4	Ind5	Ind5	Ind5	Ind6	Ind6	Ind6	Ind7	Ind7	Ind7	Ind8	Ind8	Ind8	Ind9	Ind9	Ind9	Ind10	Ind10	Ind10	Ind11	Ind11	Ind11
# NW_015441057.1_198	3	1	0.799738	0.199931	0.000331	0.941178	0.058822	0.000000	0.333333	0.333333	0.333333	0.941178	0.058822	0.000000	0.002640	0.997360	0.000000	0.819060	0.180940	0.000000	0.017693	0.109143	0.873164	0.888890	0.111108	0.000001	0.800002	0.199997	0.000001	0.000000	1.000000	0.000000	0.001006	0.998991	0.000003	0.678574	0.321406	0.000020
# NW_015441057.1_202	2	0	0.799738	0.199931	0.000331	0.941178	0.058822	0.000000	0.333333	0.333333	0.333333	0.941178	0.058822	0.000000	0.002640	0.997360	0.000000	0.819060	0.180940	0.000000	0.017693	0.109143	0.873164	0.888891	0.111108	0.000001	0.800002	0.199997	0.000001	0.000000	1.000000	0.000000	0.000000	0.999993	0.000006	0.678574	0.321406	0.000020
# 

#awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$7"\t"$10"\t"$13"\t"$16"\t"$19"\t"$22"\t"$25"\t"$28"\t"$31"\t"$34"\t"$37}' genolike.beagle.txt > genolike.beagle_02.txt
# And then go to "20_hclust_Genotype_Likelihoods.R" for producing the dendrogram

#./angsd -GL 1 -out genolike -nThreads 10 -doGlf 2 -doMajorMinor 1  -doMaf 2 -SNP_pval 1e-9 -bam bam.filelist

# stenger@sarah-Wild-Dog-Pro:~/stenger_data/EPIGENETIC_DATA/10_chimeras$ wc -l genolike.mafs
# 76384176 genolike.mafs


# Keep only A==G and G==A SNPs in order to delete the BiSulfite SNP effect (allele codes as 0=A, 1=C, 2=G, 3=T, so delete all T==C and C==T)
# awk -F " " '{ if ( $2 != 1 && $3 != 3) print $0 }' genolike.beagle_02.txt > genolike.beagle_03.txt
# awk -F " " '{ if ( $2 != 3 && $3 != 1) print $0 }' genolike.beagle_03.txt > genolike.beagle_04.txt


# stenger@sarah-Wild-Dog-Pro:~/stenger_data/EPIGENETIC_DATA/10_chimeras$ wc -l  genolike.beagle.txt
# 71266926 genolike.beagle.txt
# stenger@sarah-Wild-Dog-Pro:~/stenger_data/EPIGENETIC_DATA/10_chimeras$ wc -l genolike.beagle_03.txt
# 51407488 genolike.beagle_03.txt
# stenger@sarah-Wild-Dog-Pro:~/stenger_data/EPIGENETIC_DATA/10_chimeras$ wc -l genolike.beagle_04.txt
# 35412639 genolike.beagle_04.txt
