---
search:
  boost: 2.0
---


# Enum: SolidSampleFormat 




_Physical format categories for solid tissue specimens._



<div data-search-exclude markdown="1">

URI: [brainbank:SolidSampleFormat](https://w3id.org/VA-NCPTSDBB/brainbank/SolidSampleFormat)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| Slab | None | A thick, unsectioned cut of tissue |
| Coronal slab | None | A slab cut in the coronal plane |
| Block | None | A tissue block prepared for further sectioning (e |
| Cassette | None | Tissue enclosed in a histology processing cassette |
| Section | None | A thin tissue section cut from a block |
| Pellet | None | A cell or tissue pellet (e |
| Roll | None | Tissue rolled into a cylinder format (sometimes used for gut or thin-sheet ti... |
| Hemisphere | None | A cerebral hemisphere |
| Whole brain | None | An intact whole brain specimen |
| Remainder | None | The leftover tissue after other portions have been distributed |




## Slots

| Name | Description |
| ---  | --- |
| [format](format.md) | Physical format of this solid specimen (e |










## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank






## LinkML Source

<details>
```yaml
name: SolidSampleFormat
description: Physical format categories for solid tissue specimens.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
permissible_values:
  Slab:
    text: Slab
    description: A thick, unsectioned cut of tissue.
  Coronal slab:
    text: Coronal slab
    description: A slab cut in the coronal plane.
  Block:
    text: Block
    description: A tissue block prepared for further sectioning (e.g. paraffin or
      frozen block).
  Cassette:
    text: Cassette
    description: Tissue enclosed in a histology processing cassette.
  Section:
    text: Section
    description: A thin tissue section cut from a block.
  Pellet:
    text: Pellet
    description: A cell or tissue pellet (e.g. from centrifugation).
  Roll:
    text: Roll
    description: Tissue rolled into a cylinder format (sometimes used for gut or thin-sheet
      tissue).
  Hemisphere:
    text: Hemisphere
    description: A cerebral hemisphere.
  Whole brain:
    text: Whole brain
    description: An intact whole brain specimen.
  Remainder:
    text: Remainder
    description: The leftover tissue after other portions have been distributed.

```
</details>

</div>