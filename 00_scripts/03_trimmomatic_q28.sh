#!/usr/bin/env bash

# trimmomatic version 0.39 from conda

# Adapters : /home/stenger/stenger_data/EPIGENETIC_DATA/adapters.fasta
#>Illumina_TruSeq_LT_R1 AGATCGGAAGAGCACACGTCTGAACTCCAGTCAC
#>Illumina_TruSeq_LT_R2 AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT


trimmomatic PE -Xmx60G -threads 8 -phred33 /home/stenger/stenger_data/EPIGENETIC_DATA/01_data_unzipped/Acclimation_1_31_5a_R1.fastq /home/stenger/stenger_data/EPIGENETIC_DATA/01_data_unzipped/Acclimation_1_31_5a_R2.fastq /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_1_31_5a_R1_paired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_1_31_5a_R1_unpaired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_1_31_5a_R2_paired.fastq.gz /home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed/Acclimation_1_31_5a_R2_unpaired.fastq.gz ILLUMINACLIP:/home/stenger/stenger_data/EPIGENETIC_DATA/adapters.fasta:2:30:10 LEADING:28 TRAILING:28 SLIDINGWINDOW:24:28 MINLEN:40
