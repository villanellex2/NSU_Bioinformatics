class: CommandLineTool
cwlVersion: v1.0

baseCommand: ["samtools", "flagstat"]
inputs:
  sam:
    type: File
	format: edam:format_2573
    inputBinding:
      position: 3

outputs:
  - id: result
    type: File
    outputBinding:
      glob: result.txt
