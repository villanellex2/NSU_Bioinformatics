#!/usr/bin/env cwl-runner

class: Workflow
cwlVersion: v1.0

$namespaces:
  edam: 'http://edamontology.org/'

inputs:
  fastq:
    type: File
    format: edam:format_3989

  fastq2:
    type: File
    format: edam:format_3989

  ref:
    type: File
    format: edam:format_1929
    
steps:
  qc:
    label: qc1
    run: fastqc.cwl
    in:
      fastq: fastq
    out: [html-res, zip-res]

  rm:
    label: rm
    run: remove.cwl
    in:
      remove: qc/zip-res
    out: []

  minimap2:
    label: mininmap2
    run: minimap.cwl
    in:
	  ref: ref
      fastq: fastq
      fastq2: fastq2
    out: [sam]

  view:
    label: samtools-view
    run: samtools-view.cwl
    in:
      sam: minimap2/sam
    out: []

  flagstat:
    label: samtools-flagstat
    run: samtools-flagstat.cwl
    in:
      sam: minimap2/sam
    out: [res]

  script:
    label: script-quality
    run: script.cwl
    in:
      res: flagstat/res
    out: [script-res]
    
outputs:
  script-res:
    type: File
       outputSource: script/script-res
	   
	   
