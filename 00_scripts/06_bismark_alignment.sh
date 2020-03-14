#!/usr/bin/env bash

# Options
# Standard alignments use a multi-seed length of 20bp (-l 20) with 0 mismatches (-n 0)
# -q/--fastq The query input files (specified as <mate1>,<mate2> or <singles> are FASTQ files)
# If Paired-End Reads:
  ## Minimum insert size for valid paired-end alignments:
  # E.g. if -I 60 is specified and a paired-end alignment consists of two 20-bp alignments in the appropriate orientation with a 20-bp gap between them, that alignment is considered valid (as long as -X is also satisfied). A 19-bp gap would not be valid in that case. Default: 0.
  ## Alignment option -I/--minins <INT>: 
  # Maximum insert size for valid paired-end alignments. The maximum insert size for valid paired-end alignments. 
  # E.g. if -X 100 is specified and a paired-end alignment consists of two 20-bp alignments in the proper orientation with a 60-bp gap between them, that alignment is considered valid (as long as -I is also satisfied). A 61-bp gap would not be valid in that case. Default: 500. Alignment option -X/--maxins <INT>
# -p 4 =			#THREADS

# -n needs to be between 0 and 1


GENOME=/home/stenger/stenger_data/NEW_GENOME_ADIG2020/GCF_000222465.1_Adig_1.1_genomic_fna/GCF_000222465.1_Adig_1.1_genomic_fna
READS=/home/stenger/stenger_data/EPIGENETIC_DATA/03_trimmed
OUTPUT=/home/stenger/stenger_data/EPIGENETIC_DATA/05_bismark

cd $OUTPUT

#bismark -l 30 -n 0 -p 4 -q --genome $GENOME -1 $READS/Acclimation_1_31_5a_R1_paired.fastq.gz -2 $READS/Acclimation_1_31_5a_R2_paired.fastq.gz > $OUTPUT/Acclimation_1_31_5a.sam
#bismark -l 20 -n 0 -p 4 -q --genome $GENOME -1 $READS/Acclimation_1_31_5a_R1_paired.fastq.gz -2 $READS/Acclimation_1_31_5a_R2_paired.fastq.gz > $OUTPUT/Acclimation_1_31_5a.sam
#bismark -l 10 -n 0 -p 4 -q --genome $GENOME -1 $READS/Acclimation_1_31_5a_R1_paired.fastq.gz -2 $READS/Acclimation_1_31_5a_R2_paired.fastq.gz > $OUTPUT/Acclimation_1_31_5a.sam

bismark -l 20 -n 1 -p 4 -q --genome $GENOME -1 $READS/Acclimation_1_31_5a_R1_paired.fastq.gz -2 $READS/Acclimation_1_31_5a_R2_paired.fastq.gz > $OUTPUT/Acclimation_1_31_5a.sam


