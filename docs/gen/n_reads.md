---
search:
  boost: 5.0
---

# Slot: n_reads 


_Total number of sequencing reads (or read pairs) in this dataset._



<div data-search-exclude markdown="1">



URI: [brainbank:n_reads](https://w3id.org/VA-NCPTSDBB/brainbank/n_reads)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [SequenceDataset](SequenceDataset.md) | Abstract base for datasets derived from high-throughput sequencing assays |  no  |
| [RNASeqDataset](RNASeqDataset.md) | Transcriptomics (bulk or single-nucleus RNA-seq) expression output dataset |  no  |
| [GenomeVariantDataset](GenomeVariantDataset.md) | Whole-genome or whole-exome sequencing variant call output dataset |  no  |
| [ATACSeqDataset](ATACSeqDataset.md) | Chromatin-accessibility (ATAC-seq) peak/signal output dataset |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Integer](Integer.md) |
| Domain Of | [SequenceDataset](SequenceDataset.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [SequenceDataset](SequenceDataset.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:n_reads |
| native | brainbank:n_reads |




## LinkML Source

<details>
```yaml
name: n_reads
description: Total number of sequencing reads (or read pairs) in this dataset.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: SequenceDataset
domain_of:
- SequenceDataset
range: integer

```
</details></div>