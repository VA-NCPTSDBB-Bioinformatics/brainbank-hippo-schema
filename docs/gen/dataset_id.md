---
search:
  boost: 5.0
---

# Slot: dataset_id 


_Business identifier for this dataset (human-facing ID or accession)._



<div data-search-exclude markdown="1">



URI: [brainbank:dataset_id](https://w3id.org/VA-NCPTSDBB/brainbank/dataset_id)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [Dataset](Dataset.md) | A data artifact (scientific unit) |  no  |
| [SequenceDataset](SequenceDataset.md) | Abstract base for datasets derived from high-throughput sequencing assays |  no  |
| [RNASeqDataset](RNASeqDataset.md) | Transcriptomics (bulk or single-nucleus RNA-seq) expression output dataset |  no  |
| [GenomeVariantDataset](GenomeVariantDataset.md) | Whole-genome or whole-exome sequencing variant call output dataset |  no  |
| [ATACSeqDataset](ATACSeqDataset.md) | Chromatin-accessibility (ATAC-seq) peak/signal output dataset |  no  |
| [ArrayDataset](ArrayDataset.md) | Abstract base for datasets derived from microarray assays |  no  |
| [GenotypingDataset](GenotypingDataset.md) | SNP-array genotyping output dataset |  no  |
| [MethylationDataset](MethylationDataset.md) | Array-based DNA methylation (e |  no  |
| [ImageDataset](ImageDataset.md) | Histology or immunohistochemistry (IHC) image dataset (e |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [Dataset](Dataset.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [Dataset](Dataset.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:dataset_id |
| native | brainbank:dataset_id |




## LinkML Source

<details>
```yaml
name: dataset_id
description: Business identifier for this dataset (human-facing ID or accession).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: Dataset
domain_of:
- Dataset
range: string
required: true

```
</details></div>