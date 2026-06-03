---
search:
  boost: 5.0
---

# Slot: assays 


_Assay process nodes linking samples to datasets._



<div data-search-exclude markdown="1">



URI: [brainbank:assays](https://w3id.org/VA-NCPTSDBB/brainbank/assays)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [BrainBank](BrainBank.md) | Top-level ingest container for a brain bank record set |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Assay](Assay.md) |
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
| self | brainbank:assays |
| native | brainbank:assays |




## LinkML Source

<details>
```yaml
name: assays
description: Assay process nodes linking samples to datasets.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: BrainBank
domain_of:
- BrainBank
range: Assay
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>