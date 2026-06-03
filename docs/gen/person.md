---
search:
  boost: 5.0
---

# Slot: person 


_The person (donor) this assessment is about, if applicable._



<div data-search-exclude markdown="1">



URI: [brainbank:person](https://w3id.org/VA-NCPTSDBB/brainbank/person)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [Assessment](Assessment.md) | A pathology assessment of a person or sample (a reified observation) |  no  |
| [Measurement](Measurement.md) | A generic neuropathology measure |  no  |
| [Diagnosis](Diagnosis.md) | A disease diagnosis recorded for a donor |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Person](Person.md) |
| Domain Of | [Assessment](Assessment.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [Assessment](Assessment.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:person |
| native | brainbank:person |




## LinkML Source

<details>
```yaml
name: person
description: The person (donor) this assessment is about, if applicable.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: Assessment
domain_of:
- Assessment
range: Person

```
</details></div>