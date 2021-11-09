class: CommandLineTool
cwlVersion: v1.0

requirements:
  - class: DockerRequirement
    dockerPull: "biocontainers/bwa:0.7.15"

baseCommand: ["minimap2"]
arguments: ["-a"]
inputs:
  ref:
    type: File
    inputBinding:
      position: 3
  fastq:
    type: File
    inputBinding:
      position: 4
  fastq2:
    type: File?
    inputBinding:
      position: 5

outputs:
  output.sam:
    type: File
    outputBinding:
      glob: output.sam
