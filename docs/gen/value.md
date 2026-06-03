---
search:
  boost: 5.0
---

# Slot: value 

<div data-search-exclude markdown="1">



URI: [brainbank:value](https://w3id.org/VA-NCPTSDBB/brainbank/value)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [Quantity](Quantity.md) | Abstract base for a numeric measurement paired with a unit |  no  |
| [Mass](Mass.md) | A mass measurement (e |  no  |
| [Volume](Volume.md) | A volume measurement (e |  no  |
| [Concentration](Concentration.md) | A concentration measurement (e |  no  |
| [Parameter](Parameter.md) | A single named parameter/setting supplied to an analysis run |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [Quantity](Quantity.md), [Parameter](Parameter.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:value |
| native | brainbank:value |




## LinkML Source

<details>
```yaml
name: value
domain_of:
- Quantity
- Parameter
range: string

```
</details></div>