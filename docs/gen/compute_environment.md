---
search:
  boost: 5.0
---

# Slot: compute_environment 


_Free-text description of where/how it ran (cluster, cloud, profile)._



<div data-search-exclude markdown="1">



URI: [brainbank:compute_environment](https://w3id.org/VA-NCPTSDBB/brainbank/compute_environment)
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
| Range | [String](String.md) |
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
| self | brainbank:compute_environment |
| native | brainbank:compute_environment |




## LinkML Source

<details>
```yaml
name: compute_environment
description: Free-text description of where/how it ran (cluster, cloud, profile).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: Analysis
domain_of:
- Analysis
range: string

```
</details></div>