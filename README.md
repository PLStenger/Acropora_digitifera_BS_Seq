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
    nohup Rscript 12_methylkit_CpG_calling_trying_find_inversion.R &> 12_methylkit_CpG_calling_trying_find_inversion.out &
    nohup Rscript 12_methylkit_CpG_calling_2by2_samples.R &> 12_methylkit_CpG_calling_2by2_samples.out &
    nohup Rscript 12_methylkit_CpG_calling_20_low_count.sh &> 12_methylkit_CpG_calling_20_low_count.out &
    nohup bash 13_intersect_genes.sh &> 13_intersect_genes.out &
    nohup bash 14_interesect_bed_for_methylome_characterisation.sh &> 14_interesect_bed_for_methylome_characterisation.out &
    nohup bash 15_deepTools_bam_coverage.sh &> 15_deepTools_bam_coverage.out &
    nohup bash 16_01_compute_matrix_A_1_31_5b.sh &> 16_01_compute_matrix_A_1_31_5b.out &
    nohup bash 16_02_compute_matrix_A_1_31_5c.sh &> 16_02_compute_matrix_A_1_31_5c.out &
    nohup bash 16_03_compute_matrix_A_3_30a.sh &> 16_03_compute_matrix_A_3_30a.out &
    nohup bash 16_04_compute_matrix_C_3_30c.sh &> 16_04_compute_matrix_C_3_30c.out &
    nohup bash 16_05_compute_matrix_C_1_30b.sh &> 16_05_compute_matrix_C_1_30b.out &
    nohup bash 16_06_compute_matrix_A_3_30c.sh &> 16_06_compute_matrix_A_3_30c.out &
    nohup bash 16_07_compute_matrix_C_3_30a.sh &> 16_07_compute_matrix_C_3_30a.out &
    nohup bash 16_08_compute_matrix_C_3_30b.sh &> 16_08_compute_matrix_C_3_30b.out &
    nohup bash 16_09_compute_matrix_C_1_30a.sh &> 16_09_compute_matrix_C_1_30a.out &
    nohup bash 16_10_compute_matrix_C_1_30c.sh &> 16_10_compute_matrix_C_1_30c.out &
    nohup bash 16_11_compute_matrix_A_1_31_5a.sh &> 16_11_compute_matrix_A_1_31_5a.out &
    nohup bash 16_12_compute_matrix_A_3_30b.sh &> 16_12_compute_matrix_A_3_30b.out &
    nohup bash 16_13_computeMatrixOperations.sh &> 16_13_computeMatrixOperations.out &
    nohup bash 17_WGCNA_on_RNA_Seq.sh &> 17_WGCNA_on_RNA_Seq.out &
    nohup bash 18_GBM_calculation.sh &> 18_GBM_calculation.out &
    nohup bash 16_14_DeepTools_selected_genes.sh &> 16_14_DeepTools_selected_genes.out &
    nohup bash 16_15_DeepTools_A1vsC1.sh &> 16_15_DeepTools_A1vsC1.out &
    nohup bash 16_16_DeepTools_all_ind_cbind.sh &> 16_16_DeepTools_all_ind_cbind.out &
    nohup bash 16_16_02_DeepTools_all_ind_cbind_2replicat.sh &> 16_16_02_DeepTools_all_ind_cbind_2replicat.out &
    nohup bash 16_16_03_DeepTools_only_control_rbind_2replicat.sh &> 16_16_03_DeepTools_only_control_rbind_2replicat.out &
    nohup bash 16_17_DeepTools_all_ind_cbind_A1vcC1.sh &> 16_17_DeepTools_all_ind_cbind_A1vcC1.out &
    nohup bash 16_18_DeepTools_all_ind_cbind_A1vcC1_without_2outliers.sh &> 16_18_DeepTools_all_ind_cbind_A1vcC1_without_2outliers.out &
    nohup bash 16_19_DeepTools_all_ind_cbind_inversed.sh &> 16_19_DeepTools_all_ind_cbind_inversed.out &
    nohup bash 16_20_DeepTools_found_inversed_2by2.sh &> 16_20_DeepTools_found_inversed_2by2.out &
    nohup bash 16_21_DeepTools_2by2.sh &> 16_21_DeepTools_2by2.out &
    nohup bash 19_chimeras_check_by_ANGSD.sh &> 19_chimeras_check_by_ANGSD.out &
    nohup bash 19_02_NgsRelate.sh &> 19_02_NgsRelate.out &
    nohup bash 19_03_IBS.sh &> 19_03_IBS.out &
    nohup bash 19_04_format_input.sh &> 19_04_format_input.out &
    nohup Rscript 20_hclust_Genotype_Likelihoods.R &> 20_hclust_Genotype_Likelihoods.out &
    nohup Rscript 21_comparative_hclust.R &> 21_comparative_hclust.out &
    nohup Rscript 21_comparative_hclust_02.R &> 21_comparative_hclust_02.out &
    nohup bash 22_interesect_genomic_element.sh &> 22_interesect_genomic_element.out &


## Check it
    ps aux | grep stenger

## kill it
    kill XxXxNumberXxXx
    
    
## Quick tricks

Obtain count, min and max for each unique entry, useful for obtainning genes lengths from only an exon database:

    awk '{
      count[$1]++
      min[$1]=(!($1 in min) || $2<min[$1]) ? $2 : min[$1]
      max[$1]=(!($1 in max) || $3>max[$1]) ? $3 : max[$1]
    }
    END {
      print "Name","Count","Minimum","Maximum"
      print "----","-----","-------","-------"
      for(i in count) print i,count[i],min[i],max[i]
    }' input_file > output_file | column -t


Known how many same genes are into same cluster (here, if only two replicate)

    awk 'seen[$0]++ && seen[$0] == 2' 
