---
search:
  boost: 5.0
---

# Slot: parent_location 


_The parent location this location belongs to (e.g. room within building)._



<div data-search-exclude markdown="1">



URI: [brainbank:parent_location](https://w3id.org/VA-NCPTSDBB/brainbank/parent_location)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [Location](Location.md) | A physical storage location (room, freezer unit, building, site) |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Location](Location.md) |
| Domain Of | [Location](Location.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [Location](Location.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:parent_location |
| native | brainbank:parent_location |




## LinkML Source

<details>
```yaml
name: parent_location
description: The parent location this location belongs to (e.g. room within building).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: Location
domain_of:
- Location
range: Location

```
</details></div>