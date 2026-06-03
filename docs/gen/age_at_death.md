---
search:
  boost: 5.0
---

# Slot: age_at_death 


_Age of the donor at time of death, in years._



<div data-search-exclude markdown="1">



URI: [brainbank:age_at_death](https://w3id.org/VA-NCPTSDBB/brainbank/age_at_death)
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
| self | brainbank:age_at_death |
| native | brainbank:age_at_death |




## LinkML Source

<details>
```yaml
name: age_at_death
description: Age of the donor at time of death, in years.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: Donor
domain_of:
- Donor
range: float

```
</details></div>