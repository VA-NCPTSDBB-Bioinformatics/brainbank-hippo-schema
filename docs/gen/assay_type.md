---
search:
  boost: 5.0
---

# Slot: assay_type 

<div data-search-exclude markdown="1">



URI: [brainbank:assay_type](https://w3id.org/VA-NCPTSDBB/brainbank/assay_type)
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
| [Assay](Assay.md) | An assay run: the process node that consumes input Samples and produces Datas... |  no  |
| [SequencingAssay](SequencingAssay.md) | Abstract base for next-generation sequencing assays |  no  |
| [RNASeqAssay](RNASeqAssay.md) | An RNA sequencing assay (bulk or single-nucleus RNA-seq) |  no  |
| [GenomeSequencingAssay](GenomeSequencingAssay.md) | A whole-genome or whole-exome DNA sequencing assay |  no  |
| [ATACSeqAssay](ATACSeqAssay.md) | An ATAC-seq chromatin-accessibility assay |  no  |
| [ArrayAssay](ArrayAssay.md) | Abstract base for microarray-based assays |  no  |
| [GenotypingAssay](GenotypingAssay.md) | A SNP-array genotyping assay |  no  |
| [MethylationArrayAssay](MethylationArrayAssay.md) | An array-based DNA methylation assay (e |  no  |
| [ImagingAssay](ImagingAssay.md) | A histology or IHC imaging assay that digitizes stained tissue sections |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [Dataset](Dataset.md), [Assay](Assay.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:assay_type |
| native | brainbank:assay_type |




## LinkML Source

<details>
```yaml
name: assay_type
domain_of:
- Dataset
- Assay
range: string

```
</details></div>