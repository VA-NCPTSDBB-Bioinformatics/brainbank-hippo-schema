---
search:
  boost: 5.0
---

# Slot: blood_sample 


_Blood aliquots collected and banked._



<div data-search-exclude markdown="1">



URI: [brainbank:blood_sample](https://w3id.org/VA-NCPTSDBB/brainbank/blood_sample)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [BankBlood](BankBlood.md) | Bank a blood specimen: separate into typed aliquots (serum or plasma) and ret... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Blood](Blood.md) |
| Domain Of | [BankBlood](BankBlood.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [BankBlood](BankBlood.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:blood_sample |
| native | brainbank:blood_sample |




## LinkML Source

<details>
```yaml
name: blood_sample
description: Blood aliquots collected and banked.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: BankBlood
domain_of:
- BankBlood
range: Blood
required: true
multivalued: true

```
</details></div>