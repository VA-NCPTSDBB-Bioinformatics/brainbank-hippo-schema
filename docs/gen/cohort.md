---
search:
  boost: 5.0
---

# Slot: cohort 


_Study cohort(s) this individual belongs to._



<div data-search-exclude markdown="1">



URI: [brainbank:cohort](https://w3id.org/VA-NCPTSDBB/brainbank/cohort)
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
| Range | [Cohort](Cohort.md) |
| Domain Of | [Person](Person.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
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
| self | brainbank:cohort |
| native | brainbank:cohort |




## LinkML Source

<details>
```yaml
name: cohort
description: Study cohort(s) this individual belongs to.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: Person
domain_of:
- Person
range: Cohort
multivalued: true

```
</details></div>