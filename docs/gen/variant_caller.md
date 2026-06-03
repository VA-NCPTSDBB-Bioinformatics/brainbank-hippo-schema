---
search:
  boost: 5.0
---

# Slot: variant_caller 


_Name and version of the variant-calling software used (e.g. GATK HaplotypeCaller 4.4)._



<div data-search-exclude markdown="1">



URI: [brainbank:variant_caller](https://w3id.org/VA-NCPTSDBB/brainbank/variant_caller)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [GenomeVariantDataset](GenomeVariantDataset.md) | Whole-genome or whole-exome sequencing variant call output dataset |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [GenomeVariantDataset](GenomeVariantDataset.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [GenomeVariantDataset](GenomeVariantDataset.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:variant_caller |
| native | brainbank:variant_caller |




## LinkML Source

<details>
```yaml
name: variant_caller
description: Name and version of the variant-calling software used (e.g. GATK HaplotypeCaller
  4.4).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: GenomeVariantDataset
domain_of:
- GenomeVariantDataset
range: string

```
</details></div>