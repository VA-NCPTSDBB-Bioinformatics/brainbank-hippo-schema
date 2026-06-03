---
search:
  boost: 5.0
---

# Slot: stain 

<div data-search-exclude markdown="1">



URI: [brainbank:stain](https://w3id.org/VA-NCPTSDBB/brainbank/stain)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [SliceTissueToSlide](SliceTissueToSlide.md) | Base process for cutting tissue into slides and applying an IHC stain |  no  |
| [CreateBrainSlide](CreateBrainSlide.md) | Cut brain tissue and mount on a slide with an IHC stain applied |  no  |
| [CreateSpinalCordSlide](CreateSpinalCordSlide.md) | Cut spinal cord tissue and mount on a slide with an IHC stain applied |  no  |
| [ImageDataset](ImageDataset.md) | Histology or immunohistochemistry (IHC) image dataset (e |  no  |
| [ImagingAssay](ImagingAssay.md) | A histology or IHC imaging assay that digitizes stained tissue sections |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [SliceTissueToSlide](SliceTissueToSlide.md), [ImageDataset](ImageDataset.md), [ImagingAssay](ImagingAssay.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:stain |
| native | brainbank:stain |




## LinkML Source

<details>
```yaml
name: stain
domain_of:
- SliceTissueToSlide
- ImageDataset
- ImagingAssay
range: string

```
</details></div>