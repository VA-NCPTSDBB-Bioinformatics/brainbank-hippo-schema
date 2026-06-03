---
search:
  boost: 5.0
---

# Slot: file_sets 

<div data-search-exclude markdown="1">



URI: [brainbank:file_sets](https://w3id.org/VA-NCPTSDBB/brainbank/file_sets)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [BrainBank](BrainBank.md) | Top-level ingest container for a brain bank record set |  no  |
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
| Domain Of | [BrainBank](BrainBank.md), [Dataset](Dataset.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:file_sets |
| native | brainbank:file_sets |




## LinkML Source

<details>
```yaml
name: file_sets
domain_of:
- BrainBank
- Dataset
range: string

```
</details></div>