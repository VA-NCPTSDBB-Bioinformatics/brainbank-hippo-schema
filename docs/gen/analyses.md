---
search:
  boost: 5.0
---

# Slot: analyses 


_Computational analyses, including engine-driven WorkflowRun executions._



<div data-search-exclude markdown="1">



URI: [brainbank:analyses](https://w3id.org/VA-NCPTSDBB/brainbank/analyses)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [BrainBank](BrainBank.md) | Top-level ingest container for a brain bank record set |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Analysis](Analysis.md) |
| Domain Of | [BrainBank](BrainBank.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [BrainBank](BrainBank.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:analyses |
| native | brainbank:analyses |




## LinkML Source

<details>
```yaml
name: analyses
description: Computational analyses, including engine-driven WorkflowRun executions.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: BrainBank
domain_of:
- BrainBank
range: Analysis
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>