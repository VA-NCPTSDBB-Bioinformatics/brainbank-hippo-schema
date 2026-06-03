---
search:
  boost: 5.0
---

# Slot: workflow_definitions 


_Reusable pipeline definitions (recipes) referenced by workflow runs._



<div data-search-exclude markdown="1">



URI: [brainbank:workflow_definitions](https://w3id.org/VA-NCPTSDBB/brainbank/workflow_definitions)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [BrainBank](BrainBank.md) | Top-level ingest container for a brain bank record set |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [WorkflowDefinition](WorkflowDefinition.md) |
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
| self | brainbank:workflow_definitions |
| native | brainbank:workflow_definitions |




## LinkML Source

<details>
```yaml
name: workflow_definitions
description: Reusable pipeline definitions (recipes) referenced by workflow runs.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: BrainBank
domain_of:
- BrainBank
range: WorkflowDefinition
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>