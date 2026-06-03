---
search:
  boost: 5.0
---

# Slot: gene_model 


_Annotation/gene model used for quantification (e.g. GENCODE release, Ensembl version)._



<div data-search-exclude markdown="1">



URI: [brainbank:gene_model](https://w3id.org/VA-NCPTSDBB/brainbank/gene_model)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RNASeqDataset](RNASeqDataset.md) | Transcriptomics (bulk or single-nucleus RNA-seq) expression output dataset |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
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
| self | brainbank:gene_model |
| native | brainbank:gene_model |




## LinkML Source

<details>
```yaml
name: gene_model
description: Annotation/gene model used for quantification (e.g. GENCODE release,
  Ensembl version).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: RNASeqDataset
domain_of:
- RNASeqDataset
range: string

```
</details></div>