---
search:
  boost: 2.0
---


# Enum: SequencingPlatform 




_Next-generation sequencing instrument platforms._



<div data-search-exclude markdown="1">

URI: [brainbank:SequencingPlatform](https://w3id.org/VA-NCPTSDBB/brainbank/SequencingPlatform)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| Illumina | None | Illumina short-read sequencing platforms (e |
| PacBio | None | Pacific Biosciences long-read (SMRT) sequencing platforms |
| Oxford Nanopore | None | Oxford Nanopore Technologies long-read direct sequencing platforms |
| BGI | None | BGI/MGI sequencing platforms (e |
| Other | None | A sequencing platform not enumerated above |




## Slots

| Name | Description |
| ---  | --- |
| [platform](platform.md) | Sequencing instrument platform used (e |










## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank






## LinkML Source

<details>
```yaml
name: SequencingPlatform
description: Next-generation sequencing instrument platforms.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
permissible_values:
  Illumina:
    text: Illumina
    description: Illumina short-read sequencing platforms (e.g. NovaSeq, HiSeq).
  PacBio:
    text: PacBio
    description: Pacific Biosciences long-read (SMRT) sequencing platforms.
  Oxford Nanopore:
    text: Oxford Nanopore
    description: Oxford Nanopore Technologies long-read direct sequencing platforms.
  BGI:
    text: BGI
    description: BGI/MGI sequencing platforms (e.g. MGISEQ-2000).
  Other:
    text: Other
    description: A sequencing platform not enumerated above.

```
</details>

</div>