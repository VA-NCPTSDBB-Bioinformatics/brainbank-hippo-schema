---
search:
  boost: 5.0
---

# Slot: data_location 


_Optional convenience pointer to the dataset root (e.g. a directory or DRS bundle URI). Per-file locations/formats live on the File objects in `files`/`file_sets`._



<div data-search-exclude markdown="1">



URI: [brainbank:data_location](https://w3id.org/VA-NCPTSDBB/brainbank/data_location)
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
| Range | [Uriorcurie](Uriorcurie.md) |
| Domain Of | [Dataset](Dataset.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
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
| self | brainbank:data_location |
| native | brainbank:data_location |




## LinkML Source

<details>
```yaml
name: data_location
description: Optional convenience pointer to the dataset root (e.g. a directory or
  DRS bundle URI). Per-file locations/formats live on the File objects in `files`/`file_sets`.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: Dataset
domain_of:
- Dataset
range: uriorcurie

```
</details></div>