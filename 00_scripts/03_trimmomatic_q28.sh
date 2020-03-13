#!/usr/bin/env bash

# trimmomatic version 0.39 from conda

# Adapters : /home/stenger/stenger_data/EPIGENETIC_DATA/adapters.fasta

#>PCR_Primer_1
#AATGATACGGCGACCACCGAGATCTACAC
#>PCR_Primer_2
#CAAGCAGAAGACGGCATACGAGAT
#>NEXTflexTM_Bisulfite-Seq_Adapter_R1
#AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT
#>NEXTflexTM_Bisulfite-Seq_Adapter_R2
#GATCGGAAGAGCACACGTCTGAACTCCAGTCACTAGCTATCTCGTATGCCGTCTTCTGCTTG
#>NEXTflexTM_Bisulfite-Seq_Adapter_R2_ATGAGC
#GATCGGAAGAGCACACGTCTGAACTCCAGTCACATGAGCATCTCGTATGCCGTCTTCTGCTTG
#>NEXTflexTM_Bisulfite-Seq_Adapter_R2_CAAAAG
#GATCGGAAGAGCACACGTCTGAACTCCAGTCACCAAAAGATCTCGTATGCCGTCTTCTGCTTG
#>NEXTflexTM_Bisulfite-Seq_Adapter_R2_CAACTA
#GATCGGAAGAGCACACGTCTGAACTCCAGTCACCAACTAATCTCGTATGCCGTCTTCTGCTTG
#>NEXTflexTM_Bisulfite-Seq_Adapter_R2_CACCGG
#GATCGGAAGAGCACACGTCTGAACTCCAGTCACCACCGGATCTCGTATGCCGTCTTCTGCTTG
#>NEXTflexTM_Bisulfite-Seq_Adapter_R2_CACGAT
#GATCGGAAGAGCACACGTCTGAACTCCAGTCACCACGATATCTCGTATGCCGTCTTCTGCTTG
#>NEXTflexTM_Bisulfite-Seq_Adapter_R2_CACTCA
#GATCGGAAGAGCACACGTCTGAACTCCAGTCACCACTCAATCTCGTATGCCGTCTTCTGCTTG
#>NEXTflexTM_Bisulfite-Seq_Adapter_R2_CAGGCG
#GATCGGAAGAGCACACGTCTGAACTCCAGTCACCAGGCGATCTCGTATGCCGTCTTCTGCTTG
#>NEXTflexTM_Bisulfite-Seq_Adapter_R2_CATGGC
#GATCGGAAGAGCACACGTCTGAACTCCAGTCACCATGGCATCTCGTATGCCGTCTTCTGCTTG
#>NEXTflexTM_Bisulfite-Seq_Adapter_R2_CTAGCT
#GATCGGAAGAGCACACGTCTGAACTCCAGTCACCTAGCTATCTCGTATGCCGTCTTCTGCTTG
#>NEXTflexTM_Bisulfite-Seq_Adapter_R2_GCGCTA
#GATCGGAAGAGCACACGTCTGAACTCCAGTCACGCGCTAATCTCGTATGCCGTCTTCTGCTTG
#>NEXTflexTM_Bisulfite-Seq_Adapter_R2_GGTAGC
#GATCGGAAGAGCACACGTCTGAACTCCAGTCACGGTAGCATCTCGTATGCCGTCTTCTGCTTG
#>NEXTflexTM_Bisulfite-Seq_Adapter_R2_TATAAT
#GATCGGAAGAGCACACGTCTGAACTCCAGTCACTATAATATCTCGTATGCCGTCTTCTGCTTG
#>Illumina_TruSeq_LT_R1
#AGATCGGAAGAGCACACGTCTGAACTCCAGTCAC
#>Illumina_TruSeq_LT_R2
#AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT
#>Illumina_Universal_Adapter
#AGATCGGAAGAG
#>Illumina_Universal_Adapter_TruSight
#AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT

# With adapter file from Trimmomatic (not working so well)
#trimmomatic PE -Xmx60G -threads 8 -phred33 /home/stenger/stenger_data/EPIGENETIC_DATA/01_data_unzipped/Acclimation_1_31_5a_R1.fastq /home/stenger/stenger_data/EPIGENETIC_DATA/01_data_unzipped/Acclimation_1_31_5a_R2.fastq /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_1_31_5a_R1_paired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_1_31_5a_R1_unpaired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_1_31_5a_R2_paired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_1_31_5a_R2_unpaired.fastq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:28 TRAILING:28 SLIDINGWINDOW:24:28 MINLEN:40



# With manual file
trimmomatic PE -Xmx60G -threads 8 -phred33 /home/stenger/stenger_data/EPIGENETIC_DATA/01_data_unzipped/Acclimation_3_30a_R1.fastq /home/stenger/stenger_data/EPIGENETIC_DATA/01_data_unzipped/Acclimation_3_30a_R2.fastq /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_3_30a_R1_paired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_3_30a_R1_unpaired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_3_30a_R2_paired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_3_30a_R2_unpaired.fastq.gz ILLUMINACLIP:/home/stenger/stenger_data/EPIGENETIC_DATA/adapters.fasta:2:30:10 LEADING:28 TRAILING:28 SLIDINGWINDOW:24:28 MINLEN:40
trimmomatic PE -Xmx60G -threads 8 -phred33 /home/stenger/stenger_data/EPIGENETIC_DATA/01_data_unzipped/Acclimation_3_30b_R1.fastq /home/stenger/stenger_data/EPIGENETIC_DATA/01_data_unzipped/Acclimation_3_30b_R2.fastq /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_3_30b_R1_paired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_3_30b_R1_unpaired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_3_30b_R2_paired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_3_30b_R2_unpaired.fastq.gz ILLUMINACLIP:/home/stenger/stenger_data/EPIGENETIC_DATA/adapters.fasta:2:30:10 LEADING:28 TRAILING:28 SLIDINGWINDOW:24:28 MINLEN:40
trimmomatic PE -Xmx60G -threads 8 -phred33 /home/stenger/stenger_data/EPIGENETIC_DATA/01_data_unzipped/Acclimation_3_30c_R1.fastq /home/stenger/stenger_data/EPIGENETIC_DATA/01_data_unzipped/Acclimation_3_30c_R2.fastq /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_3_30c_R1_paired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_3_30c_R1_unpaired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_3_30c_R2_paired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_3_30c_R2_unpaired.fastq.gz ILLUMINACLIP:/home/stenger/stenger_data/EPIGENETIC_DATA/adapters.fasta:2:30:10 LEADING:28 TRAILING:28 SLIDINGWINDOW:24:28 MINLEN:40
trimmomatic PE -Xmx60G -threads 8 -phred33 /home/stenger/stenger_data/EPIGENETIC_DATA/01_data_unzipped/Acclimation_1_31_5a_R1.fastq /home/stenger/stenger_data/EPIGENETIC_DATA/01_data_unzipped/Acclimation_1_31_5a_R2.fastq /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_1_31_5a_R1_paired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_1_31_5a_R1_unpaired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_1_31_5a_R2_paired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_1_31_5a_R2_unpaired.fastq.gz ILLUMINACLIP:/home/stenger/stenger_data/EPIGENETIC_DATA/adapters.fasta:2:30:10 LEADING:28 TRAILING:28 SLIDINGWINDOW:24:28 MINLEN:40
trimmomatic PE -Xmx60G -threads 8 -phred33 /home/stenger/stenger_data/EPIGENETIC_DATA/01_data_unzipped/Acclimation_1_31_5b_R1.fastq /home/stenger/stenger_data/EPIGENETIC_DATA/01_data_unzipped/Acclimation_1_31_5b_R2.fastq /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_1_31_5b_R1_paired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_1_31_5b_R1_unpaired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_1_31_5b_R2_paired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_1_31_5b_R2_unpaired.fastq.gz ILLUMINACLIP:/home/stenger/stenger_data/EPIGENETIC_DATA/adapters.fasta:2:30:10 LEADING:28 TRAILING:28 SLIDINGWINDOW:24:28 MINLEN:40
trimmomatic PE -Xmx60G -threads 8 -phred33 /home/stenger/stenger_data/EPIGENETIC_DATA/01_data_unzipped/Acclimation_1_31_5c_R1.fastq /home/stenger/stenger_data/EPIGENETIC_DATA/01_data_unzipped/Acclimation_1_31_5c_R2.fastq /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_1_31_5c_R1_paired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_1_31_5c_R1_unpaired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_1_31_5c_R2_paired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_1_31_5c_R2_unpaired.fastq.gz ILLUMINACLIP:/home/stenger/stenger_data/EPIGENETIC_DATA/adapters.fasta:2:30:10 LEADING:28 TRAILING:28 SLIDINGWINDOW:24:28 MINLEN:40
trimmomatic PE -Xmx60G -threads 8 -phred33 /home/stenger/stenger_data/EPIGENETIC_DATA/01_data_unzipped/Control_3_30a_R1.fastq /home/stenger/stenger_data/EPIGENETIC_DATA/01_data_unzipped/Control_3_30a_R2.fastq /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Control_3_30a_R1_paired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Control_3_30a_R1_unpaired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Control_3_30a_R2_paired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Control_3_30a_R2_unpaired.fastq.gz ILLUMINACLIP:/home/stenger/stenger_data/EPIGENETIC_DATA/adapters.fasta:2:30:10 LEADING:28 TRAILING:28 SLIDINGWINDOW:24:28 MINLEN:40
trimmomatic PE -Xmx60G -threads 8 -phred33 /home/stenger/stenger_data/EPIGENETIC_DATA/01_data_unzipped/Control_3_30b_R1.fastq /home/stenger/stenger_data/EPIGENETIC_DATA/01_data_unzipped/Control_3_30b_R2.fastq /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Control_3_30b_R1_paired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Control_3_30b_R1_unpaired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Control_3_30b_R2_paired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Control_3_30b_R2_unpaired.fastq.gz ILLUMINACLIP:/home/stenger/stenger_data/EPIGENETIC_DATA/adapters.fasta:2:30:10 LEADING:28 TRAILING:28 SLIDINGWINDOW:24:28 MINLEN:40
trimmomatic PE -Xmx60G -threads 8 -phred33 /home/stenger/stenger_data/EPIGENETIC_DATA/01_data_unzipped/Control_3_30c_R1.fastq /home/stenger/stenger_data/EPIGENETIC_DATA/01_data_unzipped/Control_3_30c_R2.fastq /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Control_3_30c_R1_paired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Control_3_30c_R1_unpaired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Control_3_30c_R2_paired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Control_3_30c_R2_unpaired.fastq.gz ILLUMINACLIP:/home/stenger/stenger_data/EPIGENETIC_DATA/adapters.fasta:2:30:10 LEADING:28 TRAILING:28 SLIDINGWINDOW:24:28 MINLEN:40
trimmomatic PE -Xmx60G -threads 8 -phred33 /home/stenger/stenger_data/EPIGENETIC_DATA/01_data_unzipped/Control_1_30a_R1.fastq /home/stenger/stenger_data/EPIGENETIC_DATA/01_data_unzipped/Control_1_30a_R2.fastq /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Control_1_30a_R1_paired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Control_1_30a_R1_unpaired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Control_1_30a_R2_paired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Control_1_30a_R2_unpaired.fastq.gz ILLUMINACLIP:/home/stenger/stenger_data/EPIGENETIC_DATA/adapters.fasta:2:30:10 LEADING:28 TRAILING:28 SLIDINGWINDOW:24:28 MINLEN:40
trimmomatic PE -Xmx60G -threads 8 -phred33 /home/stenger/stenger_data/EPIGENETIC_DATA/01_data_unzipped/Control_1_30b_R1.fastq /home/stenger/stenger_data/EPIGENETIC_DATA/01_data_unzipped/Control_1_30b_R2.fastq /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Control_1_30b_R1_paired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Control_1_30b_R1_unpaired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Control_1_30b_R2_paired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Control_1_30b_R2_unpaired.fastq.gz ILLUMINACLIP:/home/stenger/stenger_data/EPIGENETIC_DATA/adapters.fasta:2:30:10 LEADING:28 TRAILING:28 SLIDINGWINDOW:24:28 MINLEN:40
trimmomatic PE -Xmx60G -threads 8 -phred33 /home/stenger/stenger_data/EPIGENETIC_DATA/01_data_unzipped/Control_1_30c_R1.fastq /home/stenger/stenger_data/EPIGENETIC_DATA/01_data_unzipped/Control_1_30c_R2.fastq /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Control_1_30c_R1_paired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Control_1_30c_R1_unpaired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Control_1_30c_R2_paired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Control_1_30c_R2_unpaired.fastq.gz ILLUMINACLIP:/home/stenger/stenger_data/EPIGENETIC_DATA/adapters.fasta:2:30:10 LEADING:28 TRAILING:28 SLIDINGWINDOW:24:28 MINLEN:40
fastqc /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_1_31_5a_R1_paired.fastq.gz -o ~/stenger_data/EPIGENETIC_DATA/04_fastqc_trimmed
fastqc /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_1_31_5b_R1_paired.fastq.gz -o ~/stenger_data/EPIGENETIC_DATA/04_fastqc_trimmed
fastqc /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_1_31_5c_R1_paired.fastq.gz -o ~/stenger_data/EPIGENETIC_DATA/04_fastqc_trimmed
fastqc /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_3_30a_R1_paired.fastq.gz -o ~/stenger_data/EPIGENETIC_DATA/04_fastqc_trimmed
fastqc /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_3_30b_R1_paired.fastq.gz -o ~/stenger_data/EPIGENETIC_DATA/04_fastqc_trimmed
fastqc /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_3_30c_R1_paired.fastq.gz -o ~/stenger_data/EPIGENETIC_DATA/04_fastqc_trimmed
fastqc /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Control_3_30a_R1_paired.fastq.gz -o ~/stenger_data/EPIGENETIC_DATA/04_fastqc_trimmed
fastqc /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Control_3_30b_R1_paired.fastq.gz -o ~/stenger_data/EPIGENETIC_DATA/04_fastqc_trimmed
fastqc /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Control_3_30c_R1_paired.fastq.gz -o ~/stenger_data/EPIGENETIC_DATA/04_fastqc_trimmed
fastqc /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Control_1_30a_R1_paired.fastq.gz -o ~/stenger_data/EPIGENETIC_DATA/04_fastqc_trimmed
fastqc /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Control_1_30b_R1_paired.fastq.gz -o ~/stenger_data/EPIGENETIC_DATA/04_fastqc_trimmed
fastqc /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Control_1_30c_R1_paired.fastq.gz -o ~/stenger_data/EPIGENETIC_DATA/04_fastqc_trimmed



