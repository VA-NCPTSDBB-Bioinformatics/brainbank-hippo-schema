---
search:
  boost: 5.0
---

# Slot: samples 


_All tissue and fluid samples in this record set._



<div data-search-exclude markdown="1">



URI: [brainbank:samples](https://w3id.org/VA-NCPTSDBB/brainbank/samples)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [BrainBank](BrainBank.md) | Top-level ingest container for a brain bank record set |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Sample](Sample.md) |
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
| self | brainbank:samples |
| native | brainbank:samples |




## LinkML Source

<details>
```yaml
name: samples
description: All tissue and fluid samples in this record set.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: BrainBank
domain_of:
- BrainBank
range: Sample
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>