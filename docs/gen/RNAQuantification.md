---
search:
  boost: 2.0
---


# Enum: RNAQuantification 




_Units or methods used to report RNA expression levels._



<div data-search-exclude markdown="1">

URI: [brainbank:RNAQuantification](https://w3id.org/VA-NCPTSDBB/brainbank/RNAQuantification)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| raw_counts | None | Unnormalized integer read counts per feature (gene or transcript) |
| TPM | None | Transcripts Per Kilobase Million; length- and depth-normalized expression uni... |
| FPKM | None | Fragments Per Kilobase of transcript per Million mapped reads; deprecated in ... |
| CPM | None | Counts Per Million mapped reads; depth-normalized but not length-normalized |




## Slots

| Name | Description |
| ---  | --- |
| [quantification](quantification.md) | Quantification unit reported in the expression matrix (e |










## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank






## LinkML Source

<details>
```yaml
name: RNAQuantification
description: Units or methods used to report RNA expression levels.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
permissible_values:
  raw_counts:
    text: raw_counts
    description: Unnormalized integer read counts per feature (gene or transcript).
  TPM:
    text: TPM
    description: Transcripts Per Kilobase Million; length- and depth-normalized expression
      unit.
  FPKM:
    text: FPKM
    description: Fragments Per Kilobase of transcript per Million mapped reads; deprecated
      in favor of TPM.
  CPM:
    text: CPM
    description: Counts Per Million mapped reads; depth-normalized but not length-normalized.

```
</details>

</div>