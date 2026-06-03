---
search:
  boost: 2.0
---


# Enum: ArrayPlatform 




_Microarray platforms used for genotyping and methylation assays._



<div data-search-exclude markdown="1">

URI: [brainbank:ArrayPlatform](https://w3id.org/VA-NCPTSDBB/brainbank/ArrayPlatform)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| Illumina Infinium EPIC | None | Illumina Infinium MethylationEPIC array (~850 K CpG sites) |
| Illumina 450K | None | Illumina HumanMethylation450 BeadChip array (~450 K CpG sites) |
| Affymetrix SNP 6.0 | None | Affymetrix Genome-Wide Human SNP Array 6 |
| Other | None | A microarray platform not enumerated above |




## Slots

| Name | Description |
| ---  | --- |
| [array_platform](array_platform.md) | Microarray platform used to generate this dataset |










## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank






## LinkML Source

<details>
```yaml
name: ArrayPlatform
description: Microarray platforms used for genotyping and methylation assays.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
permissible_values:
  Illumina Infinium EPIC:
    text: Illumina Infinium EPIC
    description: Illumina Infinium MethylationEPIC array (~850 K CpG sites).
  Illumina 450K:
    text: Illumina 450K
    description: Illumina HumanMethylation450 BeadChip array (~450 K CpG sites).
  Affymetrix SNP 6.0:
    text: Affymetrix SNP 6.0
    description: Affymetrix Genome-Wide Human SNP Array 6.0 (~1.8 M SNP and CNV markers).
  Other:
    text: Other
    description: A microarray platform not enumerated above.

```
</details>

</div>