cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  multiple-myeloma-and-malignant-plasma-cell-neoplasms-gamma---primary:
    run: multiple-myeloma-and-malignant-plasma-cell-neoplasms-gamma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  multiple-myeloma-and-malignant-plasma-cell-neoplasms-leukaemia---primary:
    run: multiple-myeloma-and-malignant-plasma-cell-neoplasms-leukaemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: multiple-myeloma-and-malignant-plasma-cell-neoplasms-gamma---primary/output
  multiple-myeloma-and-malignant-plasma-cell-neoplasms-tumour---primary:
    run: multiple-myeloma-and-malignant-plasma-cell-neoplasms-tumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: multiple-myeloma-and-malignant-plasma-cell-neoplasms-leukaemia---primary/output
  multiple-myeloma-and-malignant-plasma-cell-neoplasms---primary:
    run: multiple-myeloma-and-malignant-plasma-cell-neoplasms---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: multiple-myeloma-and-malignant-plasma-cell-neoplasms-tumour---primary/output
  multiple-myeloma-and-malignant-plasma-cell-neoplasms-waldenstrom---primary:
    run: multiple-myeloma-and-malignant-plasma-cell-neoplasms-waldenstrom---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: multiple-myeloma-and-malignant-plasma-cell-neoplasms---primary/output
  multiple-myeloma-and-malignant-plasma-cell-neoplasms-kahler's---primary:
    run: multiple-myeloma-and-malignant-plasma-cell-neoplasms-kahler's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: multiple-myeloma-and-malignant-plasma-cell-neoplasms-waldenstrom---primary/output
  multiple-myeloma-and-malignant-plasma-cell-neoplasms-alpha---primary:
    run: multiple-myeloma-and-malignant-plasma-cell-neoplasms-alpha---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: multiple-myeloma-and-malignant-plasma-cell-neoplasms-kahler's---primary/output
  immunoproliferative-multiple-myeloma-and-malignant-plasma-cell-neoplasms---primary:
    run: immunoproliferative-multiple-myeloma-and-malignant-plasma-cell-neoplasms---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: multiple-myeloma-and-malignant-plasma-cell-neoplasms-alpha---primary/output
  multiple-myeloma-and-malignant-plasma-cell-neoplasms-[m]multiple---primary:
    run: multiple-myeloma-and-malignant-plasma-cell-neoplasms-[m]multiple---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: immunoproliferative-multiple-myeloma-and-malignant-plasma-cell-neoplasms---primary/output
  multiple-myeloma-and-malignant-plasma-cell-neoplasms-[m]plasma---primary:
    run: multiple-myeloma-and-malignant-plasma-cell-neoplasms-[m]plasma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: multiple-myeloma-and-malignant-plasma-cell-neoplasms-[m]multiple---primary/output
  multiple-myeloma-and-malignant-plasma-cell-neoplasms-macroglobulinaemia---primary:
    run: multiple-myeloma-and-malignant-plasma-cell-neoplasms-macroglobulinaemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: multiple-myeloma-and-malignant-plasma-cell-neoplasms-[m]plasma---primary/output
  solitary-multiple-myeloma-and-malignant-plasma-cell-neoplasms---primary:
    run: solitary-multiple-myeloma-and-malignant-plasma-cell-neoplasms---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: multiple-myeloma-and-malignant-plasma-cell-neoplasms-macroglobulinaemia---primary/output
  myeloma---primary:
    run: myeloma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: solitary-multiple-myeloma-and-malignant-plasma-cell-neoplasms---primary/output
  multiple-myeloma-and-malignant-plasma-cell-neoplasms-chain---primary:
    run: multiple-myeloma-and-malignant-plasma-cell-neoplasms-chain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: myeloma---primary/output
  multiple-myeloma-and-malignant-plasma-cell-neoplasms-[m]myelomatosis---primary:
    run: multiple-myeloma-and-malignant-plasma-cell-neoplasms-[m]myelomatosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: multiple-myeloma-and-malignant-plasma-cell-neoplasms-chain---primary/output
  multiple-myeloma-and-malignant-plasma-cell-neoplasms-myelomatosis---primary:
    run: multiple-myeloma-and-malignant-plasma-cell-neoplasms-myelomatosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: multiple-myeloma-and-malignant-plasma-cell-neoplasms-[m]myelomatosis---primary/output
  heavy-multiple-myeloma-and-malignant-plasma-cell-neoplasms---primary:
    run: heavy-multiple-myeloma-and-malignant-plasma-cell-neoplasms---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: multiple-myeloma-and-malignant-plasma-cell-neoplasms-myelomatosis---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: heavy-multiple-myeloma-and-malignant-plasma-cell-neoplasms---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
