---
search:
  boost: 5.0
---

# Slot: containers 


_Physical storage containers (vials, boxes, freezers, etc.)._



<div data-search-exclude markdown="1">



URI: [brainbank:containers](https://w3id.org/VA-NCPTSDBB/brainbank/containers)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [BrainBank](BrainBank.md) | Top-level ingest container for a brain bank record set |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Container](Container.md) |
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
| self | brainbank:containers |
| native | brainbank:containers |




## LinkML Source

<details>
```yaml
name: containers
description: Physical storage containers (vials, boxes, freezers, etc.).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: BrainBank
domain_of:
- BrainBank
range: Container
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>