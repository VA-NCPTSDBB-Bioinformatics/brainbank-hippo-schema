---
search:
  boost: 2.0
---


# Enum: MassUnit 




_SI-derived units of mass used for specimen and extract measurements._



<div data-search-exclude markdown="1">

URI: [brainbank:MassUnit](https://w3id.org/VA-NCPTSDBB/brainbank/MassUnit)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| ng | UO:0000024 | Nanogram (10⁻⁹ g); typical for trace nucleic-acid quantities |
| ug | UO:0000023 | Microgram (10⁻⁶ g) |
| mg | UO:0000022 | Milligram (10⁻³ g); typical for tissue block weights |
| g | UO:0000021 | Gram |
| kg | UO:0000009 | Kilogram (10³ g); used for whole-organ weights |




## Slots

| Name | Description |
| ---  | --- |
| [unit](unit.md) | Unit of mass for this measurement |










## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank






## LinkML Source

<details>
```yaml
name: MassUnit
description: SI-derived units of mass used for specimen and extract measurements.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
permissible_values:
  ng:
    text: ng
    description: Nanogram (10⁻⁹ g); typical for trace nucleic-acid quantities.
    meaning: UO:0000024
  ug:
    text: ug
    description: Microgram (10⁻⁶ g).
    meaning: UO:0000023
  mg:
    text: mg
    description: Milligram (10⁻³ g); typical for tissue block weights.
    meaning: UO:0000022
  g:
    text: g
    description: Gram.
    meaning: UO:0000021
  kg:
    text: kg
    description: Kilogram (10³ g); used for whole-organ weights.
    meaning: UO:0000009

```
</details>

</div>