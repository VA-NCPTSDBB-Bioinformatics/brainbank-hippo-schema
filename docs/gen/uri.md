---
search:
  boost: 5.0
---

# Slot: uri 


_Location of the file (path, URL, or DRS id)._



<div data-search-exclude markdown="1">



URI: [brainbank:uri](https://w3id.org/VA-NCPTSDBB/brainbank/uri)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [File](File.md) | A single physical data file |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Uriorcurie](Uriorcurie.md) |
| Domain Of | [File](File.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [File](File.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:uri |
| native | brainbank:uri |




## LinkML Source

<details>
```yaml
name: uri
description: Location of the file (path, URL, or DRS id).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: File
domain_of:
- File
range: uriorcurie
required: true

```
</details></div>