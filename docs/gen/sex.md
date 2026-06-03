---
search:
  boost: 5.0
---

# Slot: sex 


_Biological sex of the individual (free text; use standard values such as male/female/unknown)._



<div data-search-exclude markdown="1">



URI: [brainbank:sex](https://w3id.org/VA-NCPTSDBB/brainbank/sex)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [Person](Person.md) | A human individual (was tissue_db:Case / draft "Subject") |  no  |
| [Donor](Donor.md) | A deceased individual who donated tissue to the brain bank |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [Person](Person.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [Person](Person.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:sex |
| native | brainbank:sex |




## LinkML Source

<details>
```yaml
name: sex
description: Biological sex of the individual (free text; use standard values such
  as male/female/unknown).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: Person
domain_of:
- Person
range: string

```
</details></div>