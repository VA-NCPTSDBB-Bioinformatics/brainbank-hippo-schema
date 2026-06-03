---
search:
  boost: 5.0
---

# Slot: read_length 


_Read length in base pairs (for paired-end reads, the per-read length)._



<div data-search-exclude markdown="1">



URI: [brainbank:read_length](https://w3id.org/VA-NCPTSDBB/brainbank/read_length)
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
| Range | [Integer](Integer.md) |
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
| self | brainbank:read_length |
| native | brainbank:read_length |




## LinkML Source

<details>
```yaml
name: read_length
description: Read length in base pairs (for paired-end reads, the per-read length).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: SequencingAssay
domain_of:
- SequencingAssay
range: integer

```
</details></div>