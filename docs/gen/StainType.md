---
search:
  boost: 2.0
---


# Enum: StainType 




_Immunohistochemical (IHC) stains used in histology slide preparation._



<div data-search-exclude markdown="1">

URI: [brainbank:StainType](https://w3id.org/VA-NCPTSDBB/brainbank/StainType)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| NeuN | None | NeuN (Neuronal Nuclei) antibody stain; marks mature neurons |
| Iba1 | None | Iba1 (Ionized calcium-binding adaptor molecule 1) stain; marks microglia |
| GFAP | None | GFAP (Glial Fibrillary Acidic Protein) stain; marks astrocytes |




## Slots

| Name | Description |
| ---  | --- |
| [stain](stain.md) | IHC stain applied to the tissue section on the slide |










## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank






## LinkML Source

<details>
```yaml
name: StainType
description: Immunohistochemical (IHC) stains used in histology slide preparation.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
permissible_values:
  NeuN:
    text: NeuN
    description: NeuN (Neuronal Nuclei) antibody stain; marks mature neurons.
  Iba1:
    text: Iba1
    description: Iba1 (Ionized calcium-binding adaptor molecule 1) stain; marks microglia.
  GFAP:
    text: GFAP
    description: GFAP (Glial Fibrillary Acidic Protein) stain; marks astrocytes.

```
</details>

</div>