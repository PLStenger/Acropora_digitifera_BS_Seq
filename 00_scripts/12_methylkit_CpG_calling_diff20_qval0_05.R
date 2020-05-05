#!/usr/bin/env Rscript

library(methylKit)
library(graphics)
library(tools)

setwd("/home/stenger/stenger_data/EPIGENETIC_DATA/05_02_bismark")

#                                          ######################################
#                                          ### Acclimation_1_VS_Acclimation_3 ###
#                                          ######################################


Diffmeth_Acclimation_1_VS_Acclimation_3_Allmeth.norm_unite.interest=getMethylDiff(Diffmeth_Acclimation_1_VS_Acclimation_3_Allmeth.norm_unite, difference = 20, qvalue = 0.05)
write.table(Diffmeth_Acclimation_1_VS_Acclimation_3_Allmeth.norm_unite.interest, file = "Diffmeth_Acclimation_1_VS_Acclimation_3_Allmeth.norm_unite.interest_diff20.q0.05.txt", sep = "\t", quote = FALSE)

#                                          ######################################
#                                          ##### Acclimation_1_VS_Control_1 #####
#                                          ######################################

Diffmeth_Acclimation_1_VS_Control_1_Allmeth.norm_unite.interest=getMethylDiff(Diffmeth_Acclimation_1_VS_Control_1_Allmeth.norm_unite, difference = 20, qvalue = 0.05)
write.table(Diffmeth_Acclimation_1_VS_Control_1_Allmeth.norm_unite.interest, file = "Diffmeth_Acclimation_1_VS_Control_1_Allmeth.norm_unite.interest_diff20.q0.05.txt", sep = "\t", quote = FALSE)

#                                          ######################################
#                                          ##### Acclimation_1_VS_Control_3 #####
#                                          ######################################

Diffmeth_Acclimation_1_VS_Control_3_Allmeth.norm_unite.interest=getMethylDiff(Diffmeth_Acclimation_1_VS_Control_3_Allmeth.norm_unite, difference = 20, qvalue = 0.05)
write.table(Diffmeth_Acclimation_1_VS_Control_3_Allmeth.norm_unite.interest, file = "Diffmeth_Acclimation_1_VS_Control_3_Allmeth.norm_unite.interest_diff20.q0.05.txt", sep = "\t", quote = FALSE)

#                                          ######################################
#                                          ####### Control_1_VS_Control_3 #######
#                                          ######################################

Diffmeth_Control_1_VS_Control_3_Allmeth.norm_unite.interest=getMethylDiff(Diffmeth_Control_1_VS_Control_3_Allmeth.norm_unite, difference = 20, qvalue = 0.05)
write.table(Diffmeth_Control_1_VS_Control_3_Allmeth.norm_unite.interest, file = "Diffmeth_Control_1_VS_Control_3_Allmeth.norm_unite.interest_diff20.q0.05.txt", sep = "\t", quote = FALSE)

#                                          ######################################
#                                          ##### Acclimation_3_VS_Control_3 #####
#                                          ######################################

Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite.interest=getMethylDiff(Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite, difference = 20, qvalue = 0.05)
write.table(Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite.interest, file = "Diffmeth_Acclimation_3_VS_Control_3_Allmeth.norm_unite.interest_diff20.q0.05.txt", sep = "\t", quote = FALSE)

#                                          ######################################
#                                          ##### Acclimation_3_VS_Control_1 #####
#                                          ######################################

Diffmeth_Acclimation_3_VS_Control_1_Allmeth.norm_unite.interest=getMethylDiff(Diffmeth_Acclimation_3_VS_Control_1_Allmeth.norm_unite, difference = 20, qvalue = 0.05)
write.table(Diffmeth_Acclimation_3_VS_Control_1_Allmeth.norm_unite.interest, file = "Diffmeth_Acclimation_3_VS_Control_1_Allmeth.norm_unite.interest_diff20.q0.05.txt", sep = "\t", quote = FALSE)





