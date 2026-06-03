---
search:
  boost: 2.0
---


# Enum: SequencingStrategy 




_DNA sequencing strategies that determine genomic coverage._



<div data-search-exclude markdown="1">

URI: [brainbank:SequencingStrategy](https://w3id.org/VA-NCPTSDBB/brainbank/SequencingStrategy)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| WGS | None | Whole-Genome Sequencing; untargeted sequencing of the entire genome |
| WES | None | Whole-Exome Sequencing; captures and sequences all protein-coding exons |
| targeted | None | Targeted sequencing of a specific gene panel or locus set |




## Slots

| Name | Description |
| ---  | --- |
| [sequencing_strategy](sequencing_strategy.md) | Sequencing strategy used to generate this variant dataset (WGS, WES, or targe... |










## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank






## LinkML Source

<details>
```yaml
name: SequencingStrategy
description: DNA sequencing strategies that determine genomic coverage.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
permissible_values:
  WGS:
    text: WGS
    description: Whole-Genome Sequencing; untargeted sequencing of the entire genome.
  WES:
    text: WES
    description: Whole-Exome Sequencing; captures and sequences all protein-coding
      exons.
  targeted:
    text: targeted
    description: Targeted sequencing of a specific gene panel or locus set.

```
</details>

</div>