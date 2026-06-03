---
search:
  boost: 5.0
---

# Slot: status 


_Execution status of this analysis run._



<div data-search-exclude markdown="1">



URI: [brainbank:status](https://w3id.org/VA-NCPTSDBB/brainbank/status)
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
| Range | [AnalysisStatus](AnalysisStatus.md) |
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
| self | brainbank:status |
| native | brainbank:status |




## LinkML Source

<details>
```yaml
name: status
description: Execution status of this analysis run.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: Analysis
domain_of:
- Analysis
range: AnalysisStatus

```
</details></div>