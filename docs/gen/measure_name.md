---
search:
  boost: 5.0
---

# Slot: measure_name 


_The neuropathology staging scale or measure being recorded (e.g. Braak NFT stage)._



<div data-search-exclude markdown="1">



URI: [brainbank:measure_name](https://w3id.org/VA-NCPTSDBB/brainbank/measure_name)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [Measurement](Measurement.md) | A generic neuropathology measure |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [MeasureType](MeasureType.md) |
| Domain Of | [Measurement](Measurement.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [Measurement](Measurement.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:measure_name |
| native | brainbank:measure_name |




## LinkML Source

<details>
```yaml
name: measure_name
description: The neuropathology staging scale or measure being recorded (e.g. Braak
  NFT stage).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: Measurement
domain_of:
- Measurement
range: MeasureType
required: true

```
</details></div>