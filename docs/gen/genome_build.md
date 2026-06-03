---
search:
  boost: 5.0
---

# Slot: genome_build 

<div data-search-exclude markdown="1">



URI: [brainbank:genome_build](https://w3id.org/VA-NCPTSDBB/brainbank/genome_build)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [SequenceDataset](SequenceDataset.md) | Abstract base for datasets derived from high-throughput sequencing assays |  no  |
| [RNASeqDataset](RNASeqDataset.md) | Transcriptomics (bulk or single-nucleus RNA-seq) expression output dataset |  no  |
| [GenomeVariantDataset](GenomeVariantDataset.md) | Whole-genome or whole-exome sequencing variant call output dataset |  no  |
| [ATACSeqDataset](ATACSeqDataset.md) | Chromatin-accessibility (ATAC-seq) peak/signal output dataset |  no  |
| [GenotypingDataset](GenotypingDataset.md) | SNP-array genotyping output dataset |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [SequenceDataset](SequenceDataset.md), [GenotypingDataset](GenotypingDataset.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:genome_build |
| native | brainbank:genome_build |




## LinkML Source

<details>
```yaml
name: genome_build
domain_of:
- SequenceDataset
- GenotypingDataset
range: string

```
</details></div>