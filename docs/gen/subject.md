---
search:
  boost: 5.0
---

# Slot: subject 


_The entity playing the subject role in this relationship._



<div data-search-exclude markdown="1">



URI: [brainbank:subject](https://w3id.org/VA-NCPTSDBB/brainbank/subject)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [Association](Association.md) | Reified, Biolink-style relationship carrying scientific metadata only (never ... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [NamedThing](NamedThing.md) |
| Domain Of | [Association](Association.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [Association](Association.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:subject |
| native | brainbank:subject |




## LinkML Source

<details>
```yaml
name: subject
description: The entity playing the subject role in this relationship.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: Association
domain_of:
- Association
range: NamedThing
required: true

```
</details></div>