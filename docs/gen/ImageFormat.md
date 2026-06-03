---
search:
  boost: 2.0
---


# Enum: ImageFormat 




_Digital image file formats used for whole-slide and histology images._



<div data-search-exclude markdown="1">

URI: [brainbank:ImageFormat](https://w3id.org/VA-NCPTSDBB/brainbank/ImageFormat)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| SVS | None | Aperio SVS whole-slide image format |
| OME-TIFF | None | Open Microscopy Environment TIFF; multi-resolution microscopy format |
| TIFF | None | Tagged Image File Format; generic raster image format |
| NDPI | None | Hamamatsu NanoZoomer Digital Pathology Image format |
| DICOM | None | Digital Imaging and Communications in Medicine; medical imaging standard |
| JPEG | None | JPEG lossy compressed image format |
| PNG | None | Portable Network Graphics lossless image format |




## Slots

| Name | Description |
| ---  | --- |
| [image_format](image_format.md) | File format of the image (e |










## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank






## LinkML Source

<details>
```yaml
name: ImageFormat
description: Digital image file formats used for whole-slide and histology images.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
permissible_values:
  SVS:
    text: SVS
    description: Aperio SVS whole-slide image format.
  OME-TIFF:
    text: OME-TIFF
    description: Open Microscopy Environment TIFF; multi-resolution microscopy format.
  TIFF:
    text: TIFF
    description: Tagged Image File Format; generic raster image format.
  NDPI:
    text: NDPI
    description: Hamamatsu NanoZoomer Digital Pathology Image format.
  DICOM:
    text: DICOM
    description: Digital Imaging and Communications in Medicine; medical imaging standard.
  JPEG:
    text: JPEG
    description: JPEG lossy compressed image format.
  PNG:
    text: PNG
    description: Portable Network Graphics lossless image format.

```
</details>

</div>