---
search:
  boost: 5.0
---

# Slot: parameters 


_Parameters/settings supplied to the run._



<div data-search-exclude markdown="1">



URI: [brainbank:parameters](https://w3id.org/VA-NCPTSDBB/brainbank/parameters)
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
| Range | [Parameter](Parameter.md) |
| Domain Of | [Analysis](Analysis.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
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
| self | brainbank:parameters |
| native | brainbank:parameters |




## LinkML Source

<details>
```yaml
name: parameters
description: Parameters/settings supplied to the run.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: Analysis
domain_of:
- Analysis
range: Parameter
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>