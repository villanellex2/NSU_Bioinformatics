class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  edam: 'http://edamontology.org/'
baseCommand: rm
inputs:
  - id: remove
    type: File
    format: edam:format_3987
    inputBinding:
      position: 2

outputs: []
