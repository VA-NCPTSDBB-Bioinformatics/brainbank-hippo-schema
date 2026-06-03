---
search:
  boost: 5.0
---

# Slot: assessments 


_Pathology assessments (measurements, diagnoses) for donors and samples._



<div data-search-exclude markdown="1">



URI: [brainbank:assessments](https://w3id.org/VA-NCPTSDBB/brainbank/assessments)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [BrainBank](BrainBank.md) | Top-level ingest container for a brain bank record set |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Assessment](Assessment.md) |
| Domain Of | [BrainBank](BrainBank.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [BrainBank](BrainBank.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:assessments |
| native | brainbank:assessments |




## LinkML Source

<details>
```yaml
name: assessments
description: Pathology assessments (measurements, diagnoses) for donors and samples.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: BrainBank
domain_of:
- BrainBank
range: Assessment
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>