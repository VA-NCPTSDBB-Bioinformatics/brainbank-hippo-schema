---
search:
  boost: 5.0
---

# Slot: parent_analysis 


_Enclosing analysis, if this is a sub-step. SEAM for future fine-grained provenance (a nextflow process / snakemake rule); not built out in the prototype._



<div data-search-exclude markdown="1">



URI: [brainbank:parent_analysis](https://w3id.org/VA-NCPTSDBB/brainbank/parent_analysis)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [Analysis](Analysis.md) | A computational process: the EXECUTION that consumes input Datasets and produ... |  no  |
| [WorkflowRun](WorkflowRun.md) | A single execution of a WorkflowDefinition by a workflow engine (e |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Analysis](Analysis.md) |
| Domain Of | [Analysis](Analysis.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [Analysis](Analysis.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:parent_analysis |
| native | brainbank:parent_analysis |




## LinkML Source

<details>
```yaml
name: parent_analysis
description: Enclosing analysis, if this is a sub-step. SEAM for future fine-grained
  provenance (a nextflow process / snakemake rule); not built out in the prototype.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: Analysis
domain_of:
- Analysis
range: Analysis

```
</details></div>