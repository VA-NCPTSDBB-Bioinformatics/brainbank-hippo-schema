---
search:
  boost: 5.0
---

# Slot: orientation 


_Anatomical plane in which this section was cut._



<div data-search-exclude markdown="1">



URI: [brainbank:orientation](https://w3id.org/VA-NCPTSDBB/brainbank/orientation)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [Section](Section.md) | A cut tissue section with a recorded dissection orientation |  no  |
| [HorizontalSection](HorizontalSection.md) | A tissue section cut in the horizontal (axial/transverse) plane |  no  |
| [SagittalSection](SagittalSection.md) | A tissue section cut in the sagittal plane (parallel to the midline) |  no  |
| [CoronalSection](CoronalSection.md) | A tissue section cut in the coronal (frontal) plane |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [DissectionOrientation](DissectionOrientation.md) |
| Domain Of | [Section](Section.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [Section](Section.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:orientation |
| native | brainbank:orientation |




## LinkML Source

<details>
```yaml
name: orientation
description: Anatomical plane in which this section was cut.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: Section
domain_of:
- Section
range: DissectionOrientation

```
</details></div>