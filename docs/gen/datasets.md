---
search:
  boost: 5.0
---

# Slot: datasets 


_Scientific data artifacts (expression matrices, VCFs, images, etc.)._



<div data-search-exclude markdown="1">



URI: [brainbank:datasets](https://w3id.org/VA-NCPTSDBB/brainbank/datasets)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [BrainBank](BrainBank.md) | Top-level ingest container for a brain bank record set |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Dataset](Dataset.md) |
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
| self | brainbank:datasets |
| native | brainbank:datasets |




## LinkML Source

<details>
```yaml
name: datasets
description: Scientific data artifacts (expression matrices, VCFs, images, etc.).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: BrainBank
domain_of:
- BrainBank
range: Dataset
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>