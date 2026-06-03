---
search:
  boost: 5.0
---

# Slot: anatomical_structures 


_Curated anatomy terms referenced by samples (reference data for now)._



<div data-search-exclude markdown="1">



URI: [brainbank:anatomical_structures](https://w3id.org/VA-NCPTSDBB/brainbank/anatomical_structures)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [BrainBank](BrainBank.md) | Top-level ingest container for a brain bank record set |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [AnatomicalStructure](AnatomicalStructure.md) |
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
| self | brainbank:anatomical_structures |
| native | brainbank:anatomical_structures |




## LinkML Source

<details>
```yaml
name: anatomical_structures
description: Curated anatomy terms referenced by samples (reference data for now).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: BrainBank
domain_of:
- BrainBank
range: AnatomicalStructure
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>