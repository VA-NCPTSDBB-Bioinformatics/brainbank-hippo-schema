---
search:
  boost: 5.0
---

# Slot: locations 


_Physical storage locations (rooms, buildings, sites)._



<div data-search-exclude markdown="1">



URI: [brainbank:locations](https://w3id.org/VA-NCPTSDBB/brainbank/locations)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [BrainBank](BrainBank.md) | Top-level ingest container for a brain bank record set |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Location](Location.md) |
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
| self | brainbank:locations |
| native | brainbank:locations |




## LinkML Source

<details>
```yaml
name: locations
description: Physical storage locations (rooms, buildings, sites).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: BrainBank
domain_of:
- BrainBank
range: Location
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>