---
search:
  boost: 5.0
---

# Slot: disease 


_The MONDO disease term for this diagnosis._



<div data-search-exclude markdown="1">



URI: [brainbank:disease](https://w3id.org/VA-NCPTSDBB/brainbank/disease)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [Diagnosis](Diagnosis.md) | A disease diagnosis recorded for a donor |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Disease](Disease.md) |
| Domain Of | [Diagnosis](Diagnosis.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [Diagnosis](Diagnosis.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:disease |
| native | brainbank:disease |




## LinkML Source

<details>
```yaml
name: disease
description: The MONDO disease term for this diagnosis.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: Diagnosis
domain_of:
- Diagnosis
range: Disease
required: true

```
</details></div>