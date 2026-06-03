---
search:
  boost: 2.0
---


# Enum: GenomeBuild 




_Reference genome assembly versions used for alignment and variant annotation._



<div data-search-exclude markdown="1">

URI: [brainbank:GenomeBuild](https://w3id.org/VA-NCPTSDBB/brainbank/GenomeBuild)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| GRCh38 | None | GRCh38/hg38 — the current human reference genome assembly (Genome Reference C... |
| GRCh37 | None | GRCh37/hg19 — the previous major human reference genome assembly |
| T2T-CHM13 | None | Telomere-to-telomere CHM13 assembly; first gapless human reference genome |
| Other | None | A genome assembly not enumerated above |




## Slots

| Name | Description |
| ---  | --- |
| [genome_build](genome_build.md) | Reference genome assembly used for alignment or variant calling |










## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank






## LinkML Source

<details>
```yaml
name: GenomeBuild
description: Reference genome assembly versions used for alignment and variant annotation.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
permissible_values:
  GRCh38:
    text: GRCh38
    description: GRCh38/hg38 — the current human reference genome assembly (Genome
      Reference Consortium, 2013).
  GRCh37:
    text: GRCh37
    description: GRCh37/hg19 — the previous major human reference genome assembly.
  T2T-CHM13:
    text: T2T-CHM13
    description: Telomere-to-telomere CHM13 assembly; first gapless human reference
      genome.
  Other:
    text: Other
    description: A genome assembly not enumerated above.

```
</details>

</div>