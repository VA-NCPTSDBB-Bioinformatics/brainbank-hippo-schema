---
search:
  boost: 5.0
---

# Slot: document_location 


_URL, directory, or other location where the SOP can be found._



<div data-search-exclude markdown="1">



URI: [brainbank:document_location](https://w3id.org/VA-NCPTSDBB/brainbank/document_location)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [Protocol](Protocol.md) | An SOP or method document (was tissue_db:SOP) |  no  |
| [WorkflowDefinition](WorkflowDefinition.md) | A reusable, versioned executable pipeline DEFINITION (e |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [Protocol](Protocol.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [Protocol](Protocol.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:document_location |
| native | brainbank:document_location |




## LinkML Source

<details>
```yaml
name: document_location
description: URL, directory, or other location where the SOP can be found.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: Protocol
domain_of:
- Protocol
range: string
required: true

```
</details></div>