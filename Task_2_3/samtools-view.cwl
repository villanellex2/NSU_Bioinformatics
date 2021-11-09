class: CommandLineTool
cwlVersion: v1.0

baseCommand: ["samtools", "view"]
inputs:
  sam:
    type: File
	format: edam:format_2573
    inputBinding:
      position: 3

outputs: []
