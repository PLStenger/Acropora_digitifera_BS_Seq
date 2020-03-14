# Acropora_digitifera_BS_Seq

    bash

## Run and go
    nohup bash 02_fastqc_raw_data.sh &
    nohup bash 03_trimmomatic_q28.sh &> 03_trimmomatic_q28.out &
    nohup bash 05_bismark_genome_preparation.sh &> 05_bismark_genome_preparation.out &
    nohup bash 06_bismark_alignment.sh &> 06_bismark_alignment.out &

## Check it
    ps aux | grep stenger

## kill it
    kill XxXxNumberXxXx
