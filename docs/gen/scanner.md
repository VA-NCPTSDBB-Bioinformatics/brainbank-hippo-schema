---
search:
  boost: 5.0
---

# Slot: scanner 


_Scanner model used for slide digitization (e.g. Aperio GT450)._



<div data-search-exclude markdown="1">



URI: [brainbank:scanner](https://w3id.org/VA-NCPTSDBB/brainbank/scanner)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ImagingAssay](ImagingAssay.md) | A histology or IHC imaging assay that digitizes stained tissue sections |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ImagingAssay](ImagingAssay.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ImagingAssay](ImagingAssay.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:scanner |
| native | brainbank:scanner |




## LinkML Source

<details>
```yaml
name: scanner
description: Scanner model used for slide digitization (e.g. Aperio GT450).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: ImagingAssay
domain_of:
- ImagingAssay
range: string

```
</details></div>