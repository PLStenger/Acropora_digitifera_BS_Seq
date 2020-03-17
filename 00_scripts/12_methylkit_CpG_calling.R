#!/usr/bin/env Rscript

library(methylKit)
library(graphics)
library(tools)

setwd("/home/stenger/stenger_data/EPIGENETIC_DATA/05_bismark")

#########################################################################################
### GET METHYLATION FROM SORTED BISMARK ALIGNEMENT OR READ THE METHYLATION CALL FILES ###
#########################################################################################

###### TEST
list.bam_acclimation=list("Acclimation_1_31_5a_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam",
                          "Acclimation_1_31_5b_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam",
                          "Acclimation_1_31_5c_R1_paired_bismark_bt2_pe.deduplicated.bam_sorted.bam")

list.id_acclimation=list("Acclimation_1_31_5a",
                         "Acclimation_1_31_5b",
                         "Acclimation_1_31_5c")

my_meth_acclimation=processBismarkAln(location=list.bam_acclimation,
                sample.id=list.id_acclimation,
                assembly="GCF_000222465.1_Adig_1.1_genomic.fasta",
                save.folder="methylation_call_acclimation",
                save.context=c("CpG"),
                read.context="CpG",
                mincov=10,
                treatment=c(0,1,2))

# Descriptive statistics on samples
print("my_meth_acclimation[[1]]")
my_meth_acclimation[[1]]
print("my_meth_acclimation[[2]]")
my_meth_acclimation[[2]]
print("my_meth_acclimation[[3]]")
my_meth_acclimation[[3]]
getMethylationStats(my_meth_acclimation[[1]],plot=FALSE,both.strands=FALSE)
getMethylationStats(my_meth_acclimation[[1]],plot=TRUE,both.strands=FALSE)
getCoverageStats(my_meth_acclimation[[1]],plot=TRUE,both.strands=FALSE)
getMethylationStats(my_meth_acclimation[[2]],plot=FALSE,both.strands=FALSE)
getMethylationStats(my_meth_acclimation[[2]],plot=TRUE,both.strands=FALSE)
getCoverageStats(my_meth_acclimation[[2]],plot=TRUE,both.strands=FALSE)
getMethylationStats(my_meth_acclimation[[3]],plot=FALSE,both.strands=FALSE)
getMethylationStats(my_meth_acclimation[[3]],plot=TRUE,both.strands=FALSE)
getCoverageStats(my_meth_acclimation[[3]],plot=TRUE,both.strands=FALSE)

save(my_meth_acclimation, file = "my_meth_acclimation.rda")
#print(my_meth_acclimation[[1]]@dbpath)
message ("my_meth_acclimation.done")
