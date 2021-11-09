class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  edam: 'http://edamontology.org/'
baseCommand: fastqc
inputs:
  - id: fastq
    type: File

outputs:
  - id: qc
    type: File
    outputBinding:
      glob: ["1_fastqc.html", "1_fastqc.zip"]
