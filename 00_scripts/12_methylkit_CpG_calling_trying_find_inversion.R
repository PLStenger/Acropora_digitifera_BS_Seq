#!/usr/bin/env Rscript

library(methylKit)
library(graphics)
library(tools)

setwd("/home/stenger/stenger_data/EPIGENETIC_DATA/05_02_bismark")

#########################################################################################
### GET METHYLATION FROM SORTED BISMARK ALIGNEMENT OR READ THE METHYLATION CALL FILES ###
#########################################################################################

###### ALL
list.bam_acclimation=list("Acclimation_1_31_5a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam",
                          "Acclimation_1_31_5b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam",
                          "Acclimation_1_31_5c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam",
			  "Acclimation_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam",
		          "Acclimation_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam",
                          "Acclimation_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam",
                          "Control_1_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam",
		          "Control_1_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam",
		          "Control_1_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam",
	                  "Control_3_30a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam",
	                  "Control_3_30b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam",
		          "Control_3_30c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam")

list.id_acclimation=list("Acclimation_1_31_5a",
                         "Acclimation_1_31_5b",
                         "Acclimation_1_31_5c",
                         "Acclimation_3_30a",
                         "Acclimation_3_30b",
                         "Acclimation_3_30c",
                         "Control_1_30a",
                         "Control_1_30b",
                         "Control_1_30c",
                         "Control_3_30a",
                         "Control_3_30b",
                         "Control_3_30c")

##############################################################################################################
###################################################### CPG ###################################################
##############################################################################################################

my_meth_acclimation=processBismarkAln(location=list.bam_acclimation,
                sample.id=list.id_acclimation,
                assembly="GCF_000222465.1_Adig_1.1_genomic_database_06_col1.fasta",
                save.folder="methylation_call_acclimation",
                save.context=c("CpG"),
                read.context="CpG",
                mincov=10,
                treatment=c(0,1,2,3,4,5,6,7,8,9,10,11))

save(my_meth_acclimation, file = "my_meth_acclimation_search_inversion.rda")
#print(my_meth_acclimation[[1]]@dbpath)
message("my_meth_acclimation_search_inversion.done")

#load("my_meth_acclimation_search_inversion.rda")
#message("load(my_meth_acclimation.rda).done")

# with normalization #
normalized.myallmeth=normalizeCoverage(my_meth_acclimation)
message("normalize.done")

# Filtering samples based on read coverage #
filtered.normalized.myallmeth.10=filterByCoverage(normalized.myallmeth,
		lo.count = 10,
		lo.perc = NULL,
		hi.count = NULL,
		hi.perc = 99.9)

save(filtered.normalized.myallmeth.10, file = "filtered.normalized.myallmeth.10_search_inversion.rda")
message("filtered.normalized.myallmeth_search_inversion.done")

### COMPARATIVE ANALYSIS ###

## Per Base ##

# with normalization #
#load("filtered.normalized.myallmeth.10.rda")
Allmeth.norm=unite(filtered.normalized.myallmeth.10, destrand = FALSE)

save(Allmeth.norm, file = "Allmeth.norm_search_inversion.rda")
message("unite.filtered.normalized.myallmeth_search_inversion.done")

##### PCA, infos, and hclust
#layout(matrix(c(1,1,2,3), 2, 2, byrow = TRUE))
PCASamples(Allmeth.norm)
PCASamples(Allmeth.norm, obj.return=TRUE)
PCASamples(Allmeth.norm, obj.return=TRUE,transpose=FALSE) 
PCASamples(Allmeth.norm, screeplot=TRUE)
clusterSamples(Allmeth.norm, dist="correlation", method="ward", plot=TRUE)

##### Correlation Plot
getCorrelation(Allmeth.norm,plot=TRUE)




