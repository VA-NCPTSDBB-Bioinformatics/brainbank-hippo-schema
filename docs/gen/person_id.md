---
search:
  boost: 5.0
---

# Slot: person_id 


_Business identifier (human-facing person ID). Gets hippo_index later._



<div data-search-exclude markdown="1">



URI: [brainbank:person_id](https://w3id.org/VA-NCPTSDBB/brainbank/person_id)
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
| Required | Yes |
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
| self | brainbank:person_id |
| native | brainbank:person_id |




## LinkML Source

<details>
```yaml
name: person_id
description: Business identifier (human-facing person ID). Gets hippo_index later.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: Person
domain_of:
- Person
range: string
required: true

```
</details></div>