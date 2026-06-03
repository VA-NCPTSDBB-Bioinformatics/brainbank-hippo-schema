---
search:
  boost: 2.0
---


# Enum: DissectionOrientation 




_Anatomical plane in which a brain tissue section was cut._



<div data-search-exclude markdown="1">

URI: [brainbank:DissectionOrientation](https://w3id.org/VA-NCPTSDBB/brainbank/DissectionOrientation)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| Coronal | None | Section cut in the coronal (frontal) plane, perpendicular to the rostro-cauda... |
| Sagittal | None | Section cut in the sagittal plane, parallel to the midline |
| Axial/Horizontal | None | Section cut in the horizontal (axial/transverse) plane, perpendicular to the ... |




## Slots

| Name | Description |
| ---  | --- |
| [orientation](orientation.md) | Anatomical plane in which this section was cut |










## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank






## LinkML Source

<details>
```yaml
name: DissectionOrientation
description: Anatomical plane in which a brain tissue section was cut.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
permissible_values:
  Coronal:
    text: Coronal
    description: Section cut in the coronal (frontal) plane, perpendicular to the
      rostro-caudal axis.
  Sagittal:
    text: Sagittal
    description: Section cut in the sagittal plane, parallel to the midline.
  Axial/Horizontal:
    text: Axial/Horizontal
    description: Section cut in the horizontal (axial/transverse) plane, perpendicular
      to the vertical axis.

```
</details>

</div>