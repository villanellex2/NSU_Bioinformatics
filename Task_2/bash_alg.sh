#!/bin/bash

fastqc sra_data.fastq			
mv sra_data_fastqc.html $1_1.html		
rm sra_data_fastqc.zip							
minimap2 -a GCF_000005845.2_ASM584v2_genomic.fna sra_data.fastq.gz > kotiki.sam
samtools view kotiki.sam								
samtools flagstat kotiki.sam
