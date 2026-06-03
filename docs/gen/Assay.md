---
search:
  boost: 10.0
---

# Class: Assay 


_An assay run: the process node that consumes input Samples and produces Datasets. Reifies the many-to-many sample<->dataset relationship and carries its production metadata. protocol/performed_on are inherited from core.Activity._



<div data-search-exclude markdown="1">



URI: [brainbank:Assay](https://w3id.org/VA-NCPTSDBB/brainbank/Assay)





```mermaid
 classDiagram
    class Assay
    click Assay href "../Assay/"
      Activity <|-- Assay
        click Activity href "../Activity/"
      

      Assay <|-- SequencingAssay
        click SequencingAssay href "../SequencingAssay/"
      Assay <|-- ArrayAssay
        click ArrayAssay href "../ArrayAssay/"
      Assay <|-- ImagingAssay
        click ImagingAssay href "../ImagingAssay/"
      

      Assay : assay_type
        
          
    
        
        
        Assay --> "0..1" AssayType : assay_type
        click AssayType href "../AssayType/"
    

        
      Assay : category
        
      Assay : description
        
      Assay : id
        
      Assay : inputs
        
          
    
        
        
        Assay --> "*" Sample : inputs
        click Sample href "../Sample/"
    

        
      Assay : name
        
      Assay : performed_on
        
      Assay : protocol
        
          
    
        
        
        Assay --> "0..1 _recommended_" Protocol : protocol
        click Protocol href "../Protocol/"
    

        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Activity](Activity.md)
        * **Assay**
            * [SequencingAssay](SequencingAssay.md)
            * [ArrayAssay](ArrayAssay.md)
            * [ImagingAssay](ImagingAssay.md)


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [assay_type](assay_type.md) | 0..1 <br/> [AssayType](AssayType.md) | OBI-controlled type of assay performed | direct |
| [inputs](inputs.md) | * <br/> [Sample](Sample.md) | Source samples consumed by this assay | direct |
| [protocol](protocol.md) | 0..1 _recommended_ <br/> [Protocol](Protocol.md) | The SOP/method this activity followed | [Activity](Activity.md) |
| [performed_on](performed_on.md) | 0..1 <br/> [Date](Date.md) | Date the activity was carried out | [Activity](Activity.md) |
| [id](id.md) | 1 <br/> [Uriorcurie](Uriorcurie.md) | Technical identifier (UUID/CURIE); becomes hippo-managed later | [NamedThing](NamedThing.md) |
| [name](name.md) | 1 <br/> [String](String.md) | Human-readable label for the entity | [NamedThing](NamedThing.md) |
| [description](description.md) | 0..1 <br/> [String](String.md) | Free-text narrative description of the entity | [NamedThing](NamedThing.md) |
| [category](category.md) | 0..1 <br/> [String](String.md) | Names the concrete class of this instance | [NamedThing](NamedThing.md) |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [BrainBank](BrainBank.md) | [assays](assays.md) | range | [Assay](Assay.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:Assay |
| native | brainbank:Assay |
| exact | OBI:0000070 |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: Assay
description: 'An assay run: the process node that consumes input Samples and produces
  Datasets. Reifies the many-to-many sample<->dataset relationship and carries its
  production metadata. protocol/performed_on are inherited from core.Activity.'
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
exact_mappings:
- OBI:0000070
is_a: Activity
attributes:
  assay_type:
    name: assay_type
    description: OBI-controlled type of assay performed.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    domain_of:
    - Dataset
    - Assay
    range: AssayType
  inputs:
    name: inputs
    description: Source samples consumed by this assay.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    domain_of:
    - Process
    - Assay
    range: Sample
    multivalued: true

```
</details>

### Induced

<details>
```yaml
name: Assay
description: 'An assay run: the process node that consumes input Samples and produces
  Datasets. Reifies the many-to-many sample<->dataset relationship and carries its
  production metadata. protocol/performed_on are inherited from core.Activity.'
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
exact_mappings:
- OBI:0000070
is_a: Activity
attributes:
  assay_type:
    name: assay_type
    description: OBI-controlled type of assay performed.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    owner: Assay
    domain_of:
    - Dataset
    - Assay
    range: AssayType
  inputs:
    name: inputs
    description: Source samples consumed by this assay.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    owner: Assay
    domain_of:
    - Process
    - Assay
    range: Sample
    multivalued: true
  protocol:
    name: protocol
    description: The SOP/method this activity followed.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: Assay
    domain_of:
    - Activity
    range: Protocol
    recommended: true
  performed_on:
    name: performed_on
    description: Date the activity was carried out.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: Assay
    domain_of:
    - Activity
    range: date
  id:
    name: id
    description: Technical identifier (UUID/CURIE); becomes hippo-managed later.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    identifier: true
    owner: Assay
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: Assay
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: Assay
    domain_of:
    - NamedThing
    range: string
  category:
    name: category
    description: Names the concrete class of this instance. Lets polymorphic inlined
      collections (e.g. a `samples` list holding SolidSample/LiquidSample) instantiate
      the right subclass.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    designates_type: true
    owner: Assay
    domain_of:
    - NamedThing
    range: string

```
</details></div>