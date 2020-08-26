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
                mincov=20,
                treatment=c(0,0,0,1,1,1,2,2,2,3,3,3))

# Descriptive statistics on samples
print("my_meth_acclimation[[1]]")
my_meth_acclimation[[1]]
print("my_meth_acclimation[[2]]")
my_meth_acclimation[[2]]
print("my_meth_acclimation[[3]]")
my_meth_acclimation[[3]]
print("my_meth_acclimation[[4]]")
my_meth_acclimation[[4]]
print("my_meth_acclimation[[5]]")
my_meth_acclimation[[5]]
print("my_meth_acclimation[[6]]")
my_meth_acclimation[[6]]
print("my_meth_acclimation[[7]]")
my_meth_acclimation[[7]]
print("my_meth_acclimation[[8]]")
my_meth_acclimation[[8]]
print("my_meth_acclimation[[9]]")
my_meth_acclimation[[9]]
print("my_meth_acclimation[[10]]")
my_meth_acclimation[[10]]
print("my_meth_acclimation[[11]]")
my_meth_acclimation[[11]]
print("my_meth_acclimation[[12]]")
my_meth_acclimation[[12]]
getMethylationStats(my_meth_acclimation[[1]],plot=FALSE,both.strands=FALSE)
getMethylationStats(my_meth_acclimation[[1]],plot=TRUE,both.strands=FALSE)
getCoverageStats(my_meth_acclimation[[1]],plot=TRUE,both.strands=FALSE)
getMethylationStats(my_meth_acclimation[[2]],plot=FALSE,both.strands=FALSE)
getMethylationStats(my_meth_acclimation[[2]],plot=TRUE,both.strands=FALSE)
getCoverageStats(my_meth_acclimation[[2]],plot=TRUE,both.strands=FALSE)
getMethylationStats(my_meth_acclimation[[3]],plot=FALSE,both.strands=FALSE)
getMethylationStats(my_meth_acclimation[[3]],plot=TRUE,both.strands=FALSE)
getCoverageStats(my_meth_acclimation[[3]],plot=TRUE,both.strands=FALSE)
getMethylationStats(my_meth_acclimation[[4]],plot=FALSE,both.strands=FALSE)
getMethylationStats(my_meth_acclimation[[4]],plot=TRUE,both.strands=FALSE)
getCoverageStats(my_meth_acclimation[[4]],plot=TRUE,both.strands=FALSE)
getMethylationStats(my_meth_acclimation[[5]],plot=FALSE,both.strands=FALSE)
getMethylationStats(my_meth_acclimation[[5]],plot=TRUE,both.strands=FALSE)
getCoverageStats(my_meth_acclimation[[5]],plot=TRUE,both.strands=FALSE)
getMethylationStats(my_meth_acclimation[[6]],plot=FALSE,both.strands=FALSE)
getMethylationStats(my_meth_acclimation[[6]],plot=TRUE,both.strands=FALSE)
getCoverageStats(my_meth_acclimation[[6]],plot=TRUE,both.strands=FALSE)
getMethylationStats(my_meth_acclimation[[7]],plot=FALSE,both.strands=FALSE)
getMethylationStats(my_meth_acclimation[[7]],plot=TRUE,both.strands=FALSE)
getCoverageStats(my_meth_acclimation[[7]],plot=TRUE,both.strands=FALSE)
getMethylationStats(my_meth_acclimation[[8]],plot=FALSE,both.strands=FALSE)
getMethylationStats(my_meth_acclimation[[8]],plot=TRUE,both.strands=FALSE)
getCoverageStats(my_meth_acclimation[[8]],plot=TRUE,both.strands=FALSE)
getMethylationStats(my_meth_acclimation[[9]],plot=FALSE,both.strands=FALSE)
getMethylationStats(my_meth_acclimation[[9]],plot=TRUE,both.strands=FALSE)
getCoverageStats(my_meth_acclimation[[9]],plot=TRUE,both.strands=FALSE)
getMethylationStats(my_meth_acclimation[[10]],plot=FALSE,both.strands=FALSE)
getMethylationStats(my_meth_acclimation[[10]],plot=TRUE,both.strands=FALSE)
getCoverageStats(my_meth_acclimation[[10]],plot=TRUE,both.strands=FALSE)
getMethylationStats(my_meth_acclimation[[11]],plot=FALSE,both.strands=FALSE)
getMethylationStats(my_meth_acclimation[[11]],plot=TRUE,both.strands=FALSE)
getCoverageStats(my_meth_acclimation[[11]],plot=TRUE,both.strands=FALSE)
getMethylationStats(my_meth_acclimation[[12]],plot=FALSE,both.strands=FALSE)
getMethylationStats(my_meth_acclimation[[12]],plot=TRUE,both.strands=FALSE)
getCoverageStats(my_meth_acclimation[[12]],plot=TRUE,both.strands=FALSE)

save(my_meth_acclimation, file = "my_meth_acclimation.rda")
#print(my_meth_acclimation[[1]]@dbpath)
message("my_meth_acclimation.done")

load("my_meth_acclimation.rda")
message("load(my_meth_acclimation.rda).done")

# with normalization #
normalized.myallmeth=normalizeCoverage(my_meth_acclimation)
message("normalize.done")

# Filtering samples based on read coverage #
filtered.normalized.myallmeth.10=filterByCoverage(normalized.myallmeth,
		lo.count = 20,
		lo.perc = NULL,
		hi.count = NULL,
		hi.perc = 99.9)

save(filtered.normalized.myallmeth.10, file = "filtered.normalized.myallmeth.10.rda")
message("filtered.normalized.myallmeth.done")

### COMPARATIVE ANALYSIS ###

## Per Base ##

# with normalization #
load("filtered.normalized.myallmeth.10.rda")
Allmeth.norm=unite(filtered.normalized.myallmeth.10, destrand = FALSE)

save(Allmeth.norm, file = "Allmeth.norm.rda")
message("unite.filtered.normalized.myallmeth.done")

##### PCA, infos, and hclust
#layout(matrix(c(1,1,2,3), 2, 2, byrow = TRUE))
PCASamples(Allmeth.norm)
PCASamples(Allmeth.norm, obj.return=TRUE)
PCASamples(Allmeth.norm, obj.return=TRUE,transpose=FALSE) 
PCASamples(Allmeth.norm, screeplot=TRUE)
clusterSamples(Allmeth.norm, dist="correlation", method="ward", plot=TRUE)

##### Correlation Plot
getCorrelation(Allmeth.norm,plot=TRUE)

write.table(Allmeth.norm, file = "Allmeth.norm.txt", sep = "\t", quote = FALSE)

perc.Allmeth.norm <- percMethylation(Allmeth.norm)
write.table(perc.Allmeth.norm, file = "Allmeth.norm.percent.txt", sep = "\t", quote = FALSE)
message("done perc meth.norm")

#################################################### REORGANIZE ##############################################
## We need to reorganize because with have a lot of comparison and it's impossible to compare all the conditions togethers


                                          ######################################
                                          ### Acclimation_1_VS_Acclimation_3 ###
                                          ######################################


########################################### object from processBismarkAln ####################################
Acclimation_1_VS_Acclimation_3_processBismarkAln=reorganize(my_meth_acclimation, 
	sample.ids=c("Acclimation_1_31_5a",
			         "Acclimation_1_31_5b",
			         "Acclimation_1_31_5c",
			         "Acclimation_3_30a",
			         "Acclimation_3_30b",
			         "Acclimation_3_30c"),
	treatment=c(0,0,0,1,1,1))
############################################# object from unite function #####################################
Acclimation_1_VS_Acclimation_3_Allmeth.norm_unite=reorganize(Allmeth.norm, 
	sample.ids=c("Acclimation_1_31_5a",
			   "Acclimation_1_31_5b",
			   "Acclimation_1_31_5c",
			   "Acclimation_3_30a",
			   "Acclimation_3_30b",
			   "Acclimation_3_30c"),
	treatment=c(0,0,0,1,1,1))
######################################### DIFFERENTIAL METHYLATION ANALYSIS ##################################
Diffmeth_Acclimation_1_VS_Acclimation_3_Allmeth.norm_unite=calculateDiffMeth(Acclimation_1_VS_Acclimation_3_Allmeth.norm_unite, mc.cores = 4)
save(Diffmeth_Acclimation_1_VS_Acclimation_3_Allmeth.norm_unite, file = "Diffmeth_Acclimation_1_VS_Acclimation_3_Allmeth.norm_unite.rda")
write.table(Diffmeth_Acclimation_1_VS_Acclimation_3_Allmeth.norm_unite, file = "Diffmeth_Acclimation_1_VS_Acclimation_3_Allmeth.norm_unite.txt", sep = "\t", quote = FALSE)
message("Diffmeth_Acclimation_1_VS_Acclimation_3_Allmeth.norm_unite done")

Diffmeth_Acclimation_1_VS_Acclimation_3_Allmeth.norm_unite.interest=getMethylDiff(Diffmeth_Acclimation_1_VS_Acclimation_3_Allmeth.norm_unite, difference = 25, qvalue = 0.01)
write.table(Diffmeth_Acclimation_1_VS_Acclimation_3_Allmeth.norm_unite.interest, file = "Diffmeth_Acclimation_1_VS_Acclimation_3_Allmeth.norm_unite.interest_diff25.q0.001.txt", sep = "\t", quote = FALSE)

Diffmeth_Acclimation_1_VS_Acclimation_3_Allmeth.norm_unite.interest.hyper=getMethylDiff(Diffmeth_Acclimation_1_VS_Acclimation_3_Allmeth.norm_unite, difference = 25, qvalue = 0.01, type = "hyper")
write.table(Diffmeth_Acclimation_1_VS_Acclimation_3_Allmeth.norm_unite.interest.hyper, file = "Diffmeth_Acclimation_1_VS_Acclimation_3_Allmeth.norm_unite_diff25.q0.001.hyper.txt", sep = "\t", quote = FALSE)

Diffmeth_Acclimation_1_VS_Acclimation_3_Allmeth.norm_unite.interest.hypo=getMethylDiff(Diffmeth_Acclimation_1_VS_Acclimation_3_Allmeth.norm_unite, difference = 25, qvalue = 0.01, type = "hypo")
write.table(Diffmeth_Acclimation_1_VS_Acclimation_3_Allmeth.norm_unite.interest.hypo, file = "Diffmeth_Acclimation_1_VS_Acclimation_3_Allmeth.norm_unite_diff25.q0.001.hypo.txt", sep = "\t", quote = FALSE)


                                          ######################################
                                          ##### Acclimation_1_VS_Control_1 #####
                                          ######################################


########################################### object from processBismarkAln ####################################
Acclimation_1_VS_Control_1_processBismarkAln=reorganize(my_meth_acclimation, 
	sample.ids=c("Acclimation_1_31_5a",
			         "Acclimation_1_31_5b",
			         "Acclimation_1_31_5c",
			         "Control_1_30a",
			         "Control_1_30b",
			         "Control_1_30c"),
	treatment=c(0,0,0,1,1,1))
############################################# object from unite function #####################################
Acclimation_1_VS_Control_1_Allmeth.norm_unite=reorganize(Allmeth.norm, 
	sample.ids=c("Acclimation_1_31_5a",
			   "Acclimation_1_31_5b",
			   "Acclimation_1_31_5c",
			   "Control_1_30a",
			   "Control_1_30b",
			   "Control_1_30c"),
	treatment=c(0,0,0,1,1,1))
######################################### DIFFERENTIAL METHYLATION ANALYSIS ##################################
Diffmeth_Acclimation_1_VS_Control_1_Allmeth.norm_unite=calculateDiffMeth(Acclimation_1_VS_Control_1_Allmeth.norm_unite, mc.cores = 4)
save(Diffmeth_Acclimation_1_VS_Control_1_Allmeth.norm_unite, file = "Diffmeth_Acclimation_1_VS_Control_1_Allmeth.norm_unite.rda")
write.table(Diffmeth_Acclimation_1_VS_Control_1_Allmeth.norm_unite, file = "Diffmeth_Acclimation_1_VS_Control_1_Allmeth.norm_unite.txt", sep = "\t", quote = FALSE)
message("Diffmeth_Acclimation_1_VS_Control_1_Allmeth.norm_unite done")

Diffmeth_Acclimation_1_VS_Control_1_Allmeth.norm_unite.interest=getMethylDiff(Diffmeth_Acclimation_1_VS_Control_1_Allmeth.norm_unite, difference = 25, qvalue = 0.01)
write.table(Diffmeth_Acclimation_1_VS_Control_1_Allmeth.norm_unite.interest, file = "Diffmeth_Acclimation_1_VS_Control_1_Allmeth.norm_unite.interest_diff25.q0.001.txt", sep = "\t", quote = FALSE)

Diffmeth_Acclimation_1_VS_Control_1_Allmeth.norm_unite.interest.hyper=getMethylDiff(Diffmeth_Acclimation_1_VS_Control_1_Allmeth.norm_unite, difference = 25, qvalue = 0.01, type = "hyper")
write.table(Diffmeth_Acclimation_1_VS_Control_1_Allmeth.norm_unite.interest.hyper, file = "Diffmeth_Acclimation_1_VS_Control_1_Allmeth.norm_unite_diff25.q0.001.hyper.txt", sep = "\t", quote = FALSE)

Diffmeth_Acclimation_1_VS_Control_1_Allmeth.norm_unite.interest.hypo=getMethylDiff(Diffmeth_Acclimation_1_VS_Control_1_Allmeth.norm_unite, difference = 25, qvalue = 0.01, type = "hypo")
write.table(Diffmeth_Acclimation_1_VS_Control_1_Allmeth.norm_unite.interest.hypo, file = "Diffmeth_Acclimation_1_VS_Control_1_Allmeth.norm_unite_diff25.q0.001.hypo.txt", sep = "\t", quote = FALSE)



                                          ######################################
                                          ##### Acclimation_1_VS_Control_3 #####
                                          ######################################


########################################### object from processBismarkAln ####################################
Acclimation_1_VS_Control_3_processBismarkAln=reorganize(my_meth_acclimation, 
	sample.ids=c("Acclimation_1_31_5a",
			         "Acclimation_1_31_5b",
			         "Acclimation_1_31_5c",
			         "Control_3_30a",
			         "Control_3_30b",
			         "Control_3_30c"),
	treatment=c(0,0,0,1,1,1))
############################################# object from unite function #####################################
Acclimation_1_VS_Control_3_Allmeth.norm_unite=reorganize(Allmeth.norm, 
	sample.ids=c("Acclimation_1_31_5a",
			   "Acclimation_1_31_5b",
			   "Acclimation_1_31_5c",
			   "Control_3_30a",
			   "Control_3_30b",
			   "Control_3_30c"),
	treatment=c(0,0,0,1,1,1))
######################################### DIFFERENTIAL METHYLATION ANALYSIS ##################################
Diffmeth_Acclimation_1_VS_Control_3_Allmeth.norm_unite=calculateDiffMeth(Acclimation_1_VS_Control_3_Allmeth.norm_unite, mc.cores = 4)
save(Diffmeth_Acclimation_1_VS_Control_3_Allmeth.norm_unite, file = "Diffmeth_Acclimation_1_VS_Control_3_Allmeth.norm_unite.rda")
write.table(Diffmeth_Acclimation_1_VS_Control_3_Allmeth.norm_unite, file = "Diffmeth_Acclimation_1_VS_Control_3_Allmeth.norm_unite.txt", sep = "\t", quote = FALSE)
message("Diffmeth_Acclimation_1_VS_Control_3_Allmeth.norm_unite done")

Diffmeth_Acclimation_1_VS_Control_3_Allmeth.norm_unite.interest=getMethylDiff(Diffmeth_Acclimation_1_VS_Control_3_Allmeth.norm_unite, difference = 25, qvalue = 0.01)
write.table(Diffmeth_Acclimation_1_VS_Control_3_Allmeth.norm_unite.interest, file = "Diffmeth_Acclimation_1_VS_Control_3_Allmeth.norm_unite.interest_diff25.q0.001.txt", sep = "\t", quote = FALSE)

Diffmeth_Acclimation_1_VS_Control_3_Allmeth.norm_unite.interest.hyper=getMethylDiff(Diffmeth_Acclimation_1_VS_Control_3_Allmeth.norm_unite, difference = 25, qvalue = 0.01, type = "hyper")
write.table(Diffmeth_Acclimation_1_VS_Control_3_Allmeth.norm_unite.interest.hyper, file = "Diffmeth_Acclimation_1_VS_Control_3_Allmeth.norm_unite_diff25.q0.001.hyper.txt", sep = "\t", quote = FALSE)

Diffmeth_Acclimation_1_VS_Control_3_Allmeth.norm_unite.interest.hypo=getMethylDiff(Diffmeth_Acclimation_1_VS_Control_3_Allmeth.norm_unite, difference = 25, qvalue = 0.01, type = "hypo")
write.table(Diffmeth_Acclimation_1_VS_Control_3_Allmeth.norm_unite.interest.hypo, file = "Diffmeth_Acclimation_1_VS_Control_3_Allmeth.norm_unite_diff25.q0.001.hypo.txt", sep = "\t", quote = FALSE)



                                          ######################################
                                          ##### Acclimation_3_VS_Control_3 #####
                                          ######################################


########################################### object from processBismarkAln ####################################
Acclimation_3_VS_Control_3_processBismarkAln=reorganize(my_meth_acclimation, 
	sample.ids=c("Acclimation_3_30a",
			         "Acclimation_3_30b",
			         "Acclimation_3_30c",
			         "Control_3_30a",
			         "Control_3_30b",
			         "Control_3_30c"),
	treatment=c(0,0,0,1,1,1))
############################################# object from unite function #####################################
Acclimation_3_VS_Control_3_Allmeth.norm_unite=reorganize(Allmeth.norm, 
	sample.ids=c("Acclimation_3_30a",
			   "Acclimation_3_30b",
			   "Acclimation_3_30c",
			   "Control_3_30a",
			   "Control_3_30b",
			   "Control_3_30c"),
	treatment=c(0,0,0,1,1,1))
######################################### DIFFERENTIAL METHYLATION ANALYSIS ##################################
Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite=calculateDiffMeth(Acclimation_3_VS_Control_3_Allmeth.norm_unite, mc.cores = 4)
save(Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite, file = "Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite.rda")
write.table(Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite, file = "Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite.txt", sep = "\t", quote = FALSE)
message("Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite done")

Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite.interest=getMethylDiff(Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite, difference = 25, qvalue = 0.01)
write.table(Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite.interest, file = "Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite.interest_diff25.q0.001.txt", sep = "\t", quote = FALSE)

Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite.interest.hyper=getMethylDiff(Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite, difference = 25, qvalue = 0.01, type = "hyper")
write.table(Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite.interest.hyper, file = "Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite_diff25.q0.001.hyper.txt", sep = "\t", quote = FALSE)

Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite.interest.hypo=getMethylDiff(Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite, difference = 25, qvalue = 0.01, type = "hypo")
write.table(Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite.interest.hypo, file = "Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite_diff25.q0.001.hypo.txt", sep = "\t", quote = FALSE)



                                          ######################################
                                          ####### Control_1_VS_Control_3 #######
                                          ######################################


########################################### object from processBismarkAln ####################################
Control_1_VS_Control_3_processBismarkAln=reorganize(my_meth_acclimation, 
	sample.ids=c("Control_1_30a",
			         "Control_1_30b",
			         "Control_1_30c",
			         "Control_3_30a",
			         "Control_3_30b",
			         "Control_3_30c"),
	treatment=c(0,0,0,1,1,1))
############################################# object from unite function #####################################
Control_1_VS_Control_3_Allmeth.norm_unite=reorganize(Allmeth.norm, 
	sample.ids=c("Control_1_30a",
			   "Control_1_30b",
			   "Control_1_30c",
			   "Control_3_30a",
			   "Control_3_30b",
			   "Control_3_30c"),
	treatment=c(0,0,0,1,1,1))
######################################### DIFFERENTIAL METHYLATION ANALYSIS ##################################
Diffmeth_Control_1_VS_Control_3_Allmeth.norm_unite=calculateDiffMeth(Control_1_VS_Control_3_Allmeth.norm_unite, mc.cores = 4)
save(Diffmeth_Control_1_VS_Control_3_Allmeth.norm_unite, file = "Diffmeth_Control_1_VS_Control_3_Allmeth.norm_unite.rda")
write.table(Diffmeth_Control_1_VS_Control_3_Allmeth.norm_unite, file = "Diffmeth_Control_1_VS_Control_3_Allmeth.norm_unite.txt", sep = "\t", quote = FALSE)
message("Diffmeth_Control_1_VS_Control_3_Allmeth.norm_unite done")

Diffmeth_Control_1_VS_Control_3_Allmeth.norm_unite.interest=getMethylDiff(Diffmeth_Control_1_VS_Control_3_Allmeth.norm_unite, difference = 25, qvalue = 0.01)
write.table(Diffmeth_Control_1_VS_Control_3_Allmeth.norm_unite.interest, file = "Diffmeth_Control_1_VS_Control_3_Allmeth.norm_unite.interest_diff25.q0.001.txt", sep = "\t", quote = FALSE)

Diffmeth_Control_1_VS_Control_3_Allmeth.norm_unite.interest.hyper=getMethylDiff(Diffmeth_Control_1_VS_Control_3_Allmeth.norm_unite, difference = 25, qvalue = 0.01, type = "hyper")
write.table(Diffmeth_Control_1_VS_Control_3_Allmeth.norm_unite.interest.hyper, file = "Diffmeth_Control_1_VS_Control_3_Allmeth.norm_unite_diff25.q0.001.hyper.txt", sep = "\t", quote = FALSE)

Diffmeth_Control_1_VS_Control_3_Allmeth.norm_unite.interest.hypo=getMethylDiff(Diffmeth_Control_1_VS_Control_3_Allmeth.norm_unite, difference = 25, qvalue = 0.01, type = "hypo")
write.table(Diffmeth_Control_1_VS_Control_3_Allmeth.norm_unite.interest.hypo, file = "Diffmeth_Control_1_VS_Control_3_Allmeth.norm_unite_diff25.q0.001.hypo.txt", sep = "\t", quote = FALSE)



                                          ######################################
                                          ##### Acclimation_3_VS_Control_3 #####
                                          ######################################


########################################### object from processBismarkAln ####################################
Acclimation_3_VS_Control_3_processBismarkAln=reorganize(my_meth_acclimation, 
	sample.ids=c("Acclimation_3_30a",
			         "Acclimation_3_30b",
			         "Acclimation_3_30c",
			         "Control_3_30a",
			         "Control_3_30b",
			         "Control_3_30c"),
	treatment=c(0,0,0,1,1,1))
############################################# object from unite function #####################################
Acclimation_3_VS_Control_3_Allmeth.norm_unite=reorganize(Allmeth.norm, 
	sample.ids=c("Acclimation_3_30a",
			   "Acclimation_3_30b",
			   "Acclimation_3_30c",
			   "Control_3_30a",
			   "Control_3_30b",
			   "Control_3_30c"),
	treatment=c(0,0,0,1,1,1))
######################################### DIFFERENTIAL METHYLATION ANALYSIS ##################################
Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite=calculateDiffMeth(Acclimation_3_VS_Control_3_Allmeth.norm_unite, mc.cores = 4)
save(Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite, file = "Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite.rda")
write.table(Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite, file = "Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite.txt", sep = "\t", quote = FALSE)
message("Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite done")

Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite.interest=getMethylDiff(Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite, difference = 25, qvalue = 0.01)
write.table(Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite.interest, file = "Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite.interest_diff25.q0.001.txt", sep = "\t", quote = FALSE)

Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite.interest.hyper=getMethylDiff(Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite, difference = 25, qvalue = 0.01, type = "hyper")
write.table(Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite.interest.hyper, file = "Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite_diff25.q0.001.hyper.txt", sep = "\t", quote = FALSE)

Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite.interest.hypo=getMethylDiff(Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite, difference = 25, qvalue = 0.01, type = "hypo")
write.table(Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite.interest.hypo, file = "Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite_diff25.q0.001.hypo.txt", sep = "\t", quote = FALSE)



                                          ######################################
                                          ##### Acclimation_3_VS_Control_1 #####
                                          ######################################


########################################### object from processBismarkAln ####################################
Acclimation_3_VS_Control_1_processBismarkAln=reorganize(my_meth_acclimation, 
	sample.ids=c("Acclimation_3_30a",
			         "Acclimation_3_30b",
			         "Acclimation_3_30c",
			         "Control_1_30a",
			         "Control_1_30b",
			         "Control_1_30c"),
	treatment=c(0,0,0,1,1,1))
############################################# object from unite function #####################################
Acclimation_3_VS_Control_1_Allmeth.norm_unite=reorganize(Allmeth.norm, 
	sample.ids=c("Acclimation_3_30a",
			   "Acclimation_3_30b",
			   "Acclimation_3_30c",
			   "Control_1_30a",
			   "Control_1_30b",
			   "Control_1_30c"),
	treatment=c(0,0,0,1,1,1))
######################################### DIFFERENTIAL METHYLATION ANALYSIS ##################################
Diffmeth_Acclimation_3_VS_Control_1_Allmeth.norm_unite=calculateDiffMeth(Acclimation_3_VS_Control_1_Allmeth.norm_unite, mc.cores = 4)
save(Diffmeth_Acclimation_3_VS_Control_1_Allmeth.norm_unite, file = "Diffmeth_Acclimation_3_VS_Control_1_Allmeth.norm_unite.rda")
write.table(Diffmeth_Acclimation_3_VS_Control_1_Allmeth.norm_unite, file = "Diffmeth_Acclimation_3_VS_Control_1_Allmeth.norm_unite.txt", sep = "\t", quote = FALSE)
message("Diffmeth_Acclimation_3_VS_Control_1_Allmeth.norm_unite done")

Diffmeth_Acclimation_3_VS_Control_1_Allmeth.norm_unite.interest=getMethylDiff(Diffmeth_Acclimation_3_VS_Control_1_Allmeth.norm_unite, difference = 25, qvalue = 0.01)
write.table(Diffmeth_Acclimation_3_VS_Control_1_Allmeth.norm_unite.interest, file = "Diffmeth_Acclimation_3_VS_Control_1_Allmeth.norm_unite.interest_diff25.q0.001.txt", sep = "\t", quote = FALSE)

Diffmeth_Acclimation_3_VS_Control_1_Allmeth.norm_unite.interest.hyper=getMethylDiff(Diffmeth_Acclimation_3_VS_Control_1_Allmeth.norm_unite, difference = 25, qvalue = 0.01, type = "hyper")
write.table(Diffmeth_Acclimation_3_VS_Control_1_Allmeth.norm_unite.interest.hyper, file = "Diffmeth_Acclimation_3_VS_Control_1_Allmeth.norm_unite_diff25.q0.001.hyper.txt", sep = "\t", quote = FALSE)

Diffmeth_Acclimation_3_VS_Control_1_Allmeth.norm_unite.interest.hypo=getMethylDiff(Diffmeth_Acclimation_3_VS_Control_1_Allmeth.norm_unite, difference = 25, qvalue = 0.01, type = "hypo")
write.table(Diffmeth_Acclimation_3_VS_Control_1_Allmeth.norm_unite.interest.hypo, file = "Diffmeth_Acclimation_3_VS_Control_1_Allmeth.norm_unite_diff25.q0.001.hypo.txt", sep = "\t", quote = FALSE)
