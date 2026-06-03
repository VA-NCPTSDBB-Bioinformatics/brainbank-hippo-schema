---
search:
  boost: 5.0
---

# Slot: processes 


_Specimen-processing and transformation events._



<div data-search-exclude markdown="1">



URI: [brainbank:processes](https://w3id.org/VA-NCPTSDBB/brainbank/processes)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [BrainBank](BrainBank.md) | Top-level ingest container for a brain bank record set |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Process](Process.md) |
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
| self | brainbank:processes |
| native | brainbank:processes |




## LinkML Source

<details>
```yaml
name: processes
description: Specimen-processing and transformation events.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: BrainBank
domain_of:
- BrainBank
range: Process
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>