---
search:
  boost: 5.0
---

# Slot: quantification 


_Quantification unit reported in the expression matrix (e.g. raw counts, TPM)._



<div data-search-exclude markdown="1">



URI: [brainbank:quantification](https://w3id.org/VA-NCPTSDBB/brainbank/quantification)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RNASeqDataset](RNASeqDataset.md) | Transcriptomics (bulk or single-nucleus RNA-seq) expression output dataset |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [RNAQuantification](RNAQuantification.md) |
| Domain Of | [RNASeqDataset](RNASeqDataset.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [RNASeqDataset](RNASeqDataset.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:quantification |
| native | brainbank:quantification |




## LinkML Source

<details>
```yaml
name: quantification
description: Quantification unit reported in the expression matrix (e.g. raw counts,
  TPM).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: RNASeqDataset
domain_of:
- RNASeqDataset
range: RNAQuantification

```
</details></div>