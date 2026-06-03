---
search:
  boost: 5.0
---

# Slot: sample 


_The tissue sample this assessment is about, if applicable._



<div data-search-exclude markdown="1">



URI: [brainbank:sample](https://w3id.org/VA-NCPTSDBB/brainbank/sample)
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
| Range | [Sample](Sample.md) |
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
| self | brainbank:sample |
| native | brainbank:sample |




## LinkML Source

<details>
```yaml
name: sample
description: The tissue sample this assessment is about, if applicable.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: Assessment
domain_of:
- Assessment
range: Sample

```
</details></div>