---
search:
  boost: 2.0
---


# Enum: WorkflowEngine 




_Workflow execution engines supported for WorkflowDefinition/WorkflowRun._



<div data-search-exclude markdown="1">

URI: [brainbank:WorkflowEngine](https://w3id.org/VA-NCPTSDBB/brainbank/WorkflowEngine)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| nextflow | None | Nextflow dataflow-based workflow engine (nextflow |
| snakemake | None | Snakemake Python-based workflow management system |
| CWL | None | Common Workflow Language; portable, standards-based workflow description |
| WDL | None | Workflow Description Language; used by Cromwell and Terra |
| bash | None | Plain Bash shell script; used for simple or legacy pipelines |
| other | None | A workflow engine not enumerated above |




## Slots

| Name | Description |
| ---  | --- |
| [engine](engine.md) | Workflow engine the pipeline is written for |










## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank






## LinkML Source

<details>
```yaml
name: WorkflowEngine
description: Workflow execution engines supported for WorkflowDefinition/WorkflowRun.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
permissible_values:
  nextflow:
    text: nextflow
    description: Nextflow dataflow-based workflow engine (nextflow.io).
  snakemake:
    text: snakemake
    description: Snakemake Python-based workflow management system.
  CWL:
    text: CWL
    description: Common Workflow Language; portable, standards-based workflow description.
  WDL:
    text: WDL
    description: Workflow Description Language; used by Cromwell and Terra.
  bash:
    text: bash
    description: Plain Bash shell script; used for simple or legacy pipelines.
  other:
    text: other
    description: A workflow engine not enumerated above.

```
</details>

</div>