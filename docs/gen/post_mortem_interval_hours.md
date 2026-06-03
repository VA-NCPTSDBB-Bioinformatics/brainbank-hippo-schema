---
search:
  boost: 5.0
---

# Slot: post_mortem_interval_hours 


_Post-mortem interval (PMI): time elapsed between death and tissue collection, in hours. Shorter PMI is generally associated with better tissue quality for molecular assays._



<div data-search-exclude markdown="1">



URI: [brainbank:post_mortem_interval_hours](https://w3id.org/VA-NCPTSDBB/brainbank/post_mortem_interval_hours)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [Donor](Donor.md) | A deceased individual who donated tissue to the brain bank |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Float](Float.md) |
| Domain Of | [Donor](Donor.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [Donor](Donor.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:post_mortem_interval_hours |
| native | brainbank:post_mortem_interval_hours |




## LinkML Source

<details>
```yaml
name: post_mortem_interval_hours
description: 'Post-mortem interval (PMI): time elapsed between death and tissue collection,
  in hours. Shorter PMI is generally associated with better tissue quality for molecular
  assays.'
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: Donor
domain_of:
- Donor
range: float

```
</details></div>