---
search:
  boost: 5.0
---

# Slot: species 


_Species of the individual. Defaults conceptually to Homo sapiens (NCBITaxon:9606); an ifabsent default is omitted because Species is a dynamic (reachable_from) enum with no static permissible value for gen-pydantic to materialize._



<div data-search-exclude markdown="1">



URI: [brainbank:species](https://w3id.org/VA-NCPTSDBB/brainbank/species)
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
| Range | [Species](Species.md) |
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
| self | brainbank:species |
| native | brainbank:species |




## LinkML Source

<details>
```yaml
name: species
description: Species of the individual. Defaults conceptually to Homo sapiens (NCBITaxon:9606);
  an ifabsent default is omitted because Species is a dynamic (reachable_from) enum
  with no static permissible value for gen-pydantic to materialize.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: Person
domain_of:
- Person
range: Species

```
</details></div>