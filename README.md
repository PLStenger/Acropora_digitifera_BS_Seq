# Acropora_digitifera_BS_Seq

    bash

## Run and go
    nohup bash 02_fastqc_raw_data.sh &
    nohup bash 03_trimmomatic_q28.sh &> 03_trimmomatic_q28.out &
    nohup bash 04_fastqc_trimmed.sh &> 04_fastqc_trimmed.out &
    nohup bash 05_bismark_genome_preparation.sh &> 05_bismark_genome_preparation.out &
    nohup bash 06_bismark_alignment.sh &> 06_bismark_alignment.out &
    nohup bash 07_bismark_alignment_deduplicate.sh &> 07_bismark_alignment_deduplicate.out &
    nohup bash 08_sort_bam.sh &> 08_sort_bam.out &
    nohup bash 09_bismark_methylation_extractor.sh &> 09_bismark_methylation_extractor.out &
    nohup bash 10_flagstat.sh &> 10_flagstat.out &
    nohup bash 11_index_bam.sh &> 11_index_bam.out &
    nohup bash 12_methylkit_CpG_calling.sh &> 12_methylkit_CpG_calling.out &
    nohup bash 13_intersect_genes.sh &> 13_intersect_genes.out &
    nohup bash 14_interesect_bed_for_methylome_characterisation.sh &> 14_interesect_bed_for_methylome_characterisation.out &
    nohup bash 15_deepTools.sh &> 15_deepTools.out &
    nohup bash 16_01_compute_matrix.sh &> 16_01_compute_matrix.out &
    nohup bash 16_02_compute_matrix.sh &> 16_02_compute_matrix.out &
    nohup bash 16_03_compute_matrix.sh &> 16_03_compute_matrix.out &
    nohup bash 16_04_compute_matrix.sh &> 16_04_compute_matrix.out &
    nohup bash 16_05_compute_matrix.sh &> 16_05_compute_matrix.out &
    nohup bash 16_06_compute_matrix.sh &> 16_06_compute_matrix.out &
    nohup bash 16_07_compute_matrix.sh &> 16_07_compute_matrix.out &
    nohup bash 16_08_compute_matrix.sh &> 16_08_compute_matrix.out &
    nohup bash 16_09_compute_matrix.sh &> 16_09_compute_matrix.out &
    nohup bash 16_10_compute_matrix.sh &> 16_10_compute_matrix.out &
    nohup bash 16_11_compute_matrix.sh &> 16_11_compute_matrix.out &
    nohup bash 16_12_compute_matrix.sh &> 16_12_compute_matrix.out &

    
## Check it
    ps aux | grep stenger

## kill it
    kill XxXxNumberXxXx

