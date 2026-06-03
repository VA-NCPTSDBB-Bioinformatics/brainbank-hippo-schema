---
search:
  boost: 5.0
---

# Slot: output_datasets 


_Datasets produced by this analysis. Each such Dataset should also point back via produced_by -> this Analysis._



<div data-search-exclude markdown="1">



URI: [brainbank:output_datasets](https://w3id.org/VA-NCPTSDBB/brainbank/output_datasets)
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
| Range | [Dataset](Dataset.md) |
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
| self | brainbank:output_datasets |
| native | brainbank:output_datasets |




## LinkML Source

<details>
```yaml
name: output_datasets
description: Datasets produced by this analysis. Each such Dataset should also point
  back via produced_by -> this Analysis.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: Analysis
domain_of:
- Analysis
range: Dataset
multivalued: true

```
</details></div>