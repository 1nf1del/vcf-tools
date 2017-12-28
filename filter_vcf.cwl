cwlVersion: v1.0
class: CommandLineTool

label: Merge VCFs

requirements:
  - class: DockerRequirement
    dockerImageId: opengenomics/vcftools

baseCommand: [python, /opt/filter_vcf.py]

inputs:

  output_name:
    type: string
    default: output.vcf
    inputBinding:
      position: 3

  ad:
    type: int?
    inputBinding:
      prefix: --ad

  vcf:
    type: File
    inputBinding:
      position: 2

outputs:
  output_vcf:
    type: File
    outputBinding:
      glob: output.vcf