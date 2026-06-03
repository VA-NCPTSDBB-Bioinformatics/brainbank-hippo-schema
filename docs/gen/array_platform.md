---
search:
  boost: 5.0
---

# Slot: array_platform 

<div data-search-exclude markdown="1">



URI: [brainbank:array_platform](https://w3id.org/VA-NCPTSDBB/brainbank/array_platform)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ArrayDataset](ArrayDataset.md) | Abstract base for datasets derived from microarray assays |  no  |
| [GenotypingDataset](GenotypingDataset.md) | SNP-array genotyping output dataset |  no  |
| [MethylationDataset](MethylationDataset.md) | Array-based DNA methylation (e |  no  |
| [ArrayAssay](ArrayAssay.md) | Abstract base for microarray-based assays |  no  |
| [GenotypingAssay](GenotypingAssay.md) | A SNP-array genotyping assay |  no  |
| [MethylationArrayAssay](MethylationArrayAssay.md) | An array-based DNA methylation assay (e |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ArrayDataset](ArrayDataset.md), [ArrayAssay](ArrayAssay.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:array_platform |
| native | brainbank:array_platform |




## LinkML Source

<details>
```yaml
name: array_platform
domain_of:
- ArrayDataset
- ArrayAssay
range: string

```
</details></div>