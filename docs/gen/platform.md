---
search:
  boost: 5.0
---

# Slot: platform 


_Sequencing instrument platform used (e.g. Illumina, PacBio)._



<div data-search-exclude markdown="1">



URI: [brainbank:platform](https://w3id.org/VA-NCPTSDBB/brainbank/platform)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [SequencingAssay](SequencingAssay.md) | Abstract base for next-generation sequencing assays |  no  |
| [RNASeqAssay](RNASeqAssay.md) | An RNA sequencing assay (bulk or single-nucleus RNA-seq) |  no  |
| [GenomeSequencingAssay](GenomeSequencingAssay.md) | A whole-genome or whole-exome DNA sequencing assay |  no  |
| [ATACSeqAssay](ATACSeqAssay.md) | An ATAC-seq chromatin-accessibility assay |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [SequencingPlatform](SequencingPlatform.md) |
| Domain Of | [SequencingAssay](SequencingAssay.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [SequencingAssay](SequencingAssay.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:platform |
| native | brainbank:platform |




## LinkML Source

<details>
```yaml
name: platform
description: Sequencing instrument platform used (e.g. Illumina, PacBio).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: SequencingAssay
domain_of:
- SequencingAssay
range: SequencingPlatform

```
</details></div>