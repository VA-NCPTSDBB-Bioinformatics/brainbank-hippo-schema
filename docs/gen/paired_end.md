---
search:
  boost: 5.0
---

# Slot: paired_end 


_Whether this assay used paired-end sequencing (true) or single-end (false)._



<div data-search-exclude markdown="1">



URI: [brainbank:paired_end](https://w3id.org/VA-NCPTSDBB/brainbank/paired_end)
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
| Range | [Boolean](Boolean.md) |
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
| self | brainbank:paired_end |
| native | brainbank:paired_end |




## LinkML Source

<details>
```yaml
name: paired_end
description: Whether this assay used paired-end sequencing (true) or single-end (false).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: SequencingAssay
domain_of:
- SequencingAssay
range: boolean

```
</details></div>