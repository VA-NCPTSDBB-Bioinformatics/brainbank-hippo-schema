---
search:
  boost: 5.0
---

# Slot: method 

<div data-search-exclude markdown="1">



URI: [brainbank:method](https://w3id.org/VA-NCPTSDBB/brainbank/method)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [Association](Association.md) | Reified, Biolink-style relationship carrying scientific metadata only (never ... |  no  |
| [Assessment](Assessment.md) | A pathology assessment of a person or sample (a reified observation) |  no  |
| [Measurement](Measurement.md) | A generic neuropathology measure |  no  |
| [Diagnosis](Diagnosis.md) | A disease diagnosis recorded for a donor |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [Association](Association.md), [Assessment](Assessment.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:method |
| native | brainbank:method |




## LinkML Source

<details>
```yaml
name: method
domain_of:
- Association
- Assessment
range: string

```
</details></div>