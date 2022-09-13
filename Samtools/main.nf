#!/usr/bin/env nextflow

bamfile = Channel.fromPath("/mnt/c/Users/abc/Desktop/Nextflow/samtools/docker/*.bam")

process SAMTOOLS_VIEW {
  input:
  path query_file from bamfile

  output:
  path query_file into samfile

 """
  samtools view -h example.bam > example.bam.sam
 """
}  

samfile.view {"$it"}
