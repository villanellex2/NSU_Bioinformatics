class: CommandLineTool
cwlVersion: v1.0

baseCommand: python3
arguments: ["script.py"]
inputs:
  res:
    type: File
	format: edam:format_2330
    inputBinding:
      position: 3

outputs:
  - id: script-res
    type: File
    outputBinding:
      glob: script-res.txt
