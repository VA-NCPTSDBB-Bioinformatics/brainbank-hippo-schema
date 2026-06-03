---
search:
  boost: 10.0
---

# Class: CultureDura 


_Establish a cell culture from dura mater tissue (typically fibroblast culture)._



<div data-search-exclude markdown="1">



URI: [brainbank:CultureDura](https://w3id.org/VA-NCPTSDBB/brainbank/CultureDura)





```mermaid
 classDiagram
    class CultureDura
    click CultureDura href "../CultureDura/"
      CultureTissue <|-- CultureDura
        click CultureTissue href "../CultureTissue/"
      
      CultureDura : category
        
      CultureDura : cells
        
          
    
        
        
        CultureDura --> "0..1" Cells : cells
        click Cells href "../Cells/"
    

        
      CultureDura : culture_media
        
          
    
        
        
        CultureDura --> "0..1" CultureMedia : culture_media
        click CultureMedia href "../CultureMedia/"
    

        
      CultureDura : description
        
      CultureDura : id
        
      CultureDura : inputs
        
          
    
        
        
        CultureDura --> "1..*" Dura : inputs
        click Dura href "../Dura/"
    

        
      CultureDura : name
        
      CultureDura : outputs
        
          
    
        
        
        CultureDura --> "*" Sample : outputs
        click Sample href "../Sample/"
    

        
      CultureDura : performed_on
        
      CultureDura : protocol
        
          
    
        
        
        CultureDura --> "0..1 _recommended_" Protocol : protocol
        click Protocol href "../Protocol/"
    

        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Activity](Activity.md)
        * [Process](Process.md)
            * [CultureTissue](CultureTissue.md)
                * **CultureDura**


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [cells](cells.md) | 0..1 <br/> [Cells](Cells.md) | Cell suspension produced from the dura culture | direct |
| [culture_media](culture_media.md) | 0..1 <br/> [CultureMedia](CultureMedia.md) | Culture medium used to maintain the tissue or cells during culture | [CultureTissue](CultureTissue.md) |
| [inputs](inputs.md) | 1..* <br/> [Dura](Dura.md) | Input specimens consumed or transformed by this process | [Process](Process.md) |
| [outputs](outputs.md) | * <br/> [Sample](Sample.md) | Specimens produced as output of this process | [Process](Process.md) |
| [protocol](protocol.md) | 0..1 _recommended_ <br/> [Protocol](Protocol.md) | The SOP/method this activity followed | [Activity](Activity.md) |
| [performed_on](performed_on.md) | 0..1 <br/> [Date](Date.md) | Date the activity was carried out | [Activity](Activity.md) |
| [id](id.md) | 1 <br/> [Uriorcurie](Uriorcurie.md) | Technical identifier (UUID/CURIE); becomes hippo-managed later | [NamedThing](NamedThing.md) |
| [name](name.md) | 1 <br/> [String](String.md) | Human-readable label for the entity | [NamedThing](NamedThing.md) |
| [description](description.md) | 0..1 <br/> [String](String.md) | Free-text narrative description of the entity | [NamedThing](NamedThing.md) |
| [category](category.md) | 0..1 <br/> [String](String.md) | Names the concrete class of this instance | [NamedThing](NamedThing.md) |















## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:CultureDura |
| native | brainbank:CultureDura |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: CultureDura
description: Establish a cell culture from dura mater tissue (typically fibroblast
  culture).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: CultureTissue
slot_usage:
  inputs:
    name: inputs
    range: Dura
    required: true
attributes:
  cells:
    name: cells
    description: Cell suspension produced from the dura culture.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    domain_of:
    - CultureDura
    range: Cells

```
</details>

### Induced

<details>
```yaml
name: CultureDura
description: Establish a cell culture from dura mater tissue (typically fibroblast
  culture).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: CultureTissue
slot_usage:
  inputs:
    name: inputs
    range: Dura
    required: true
attributes:
  cells:
    name: cells
    description: Cell suspension produced from the dura culture.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    owner: CultureDura
    domain_of:
    - CultureDura
    range: Cells
  culture_media:
    name: culture_media
    description: Culture medium used to maintain the tissue or cells during culture.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    owner: CultureDura
    domain_of:
    - BankSkin
    - CultureTissue
    range: CultureMedia
  inputs:
    name: inputs
    description: Input specimens consumed or transformed by this process.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: CultureDura
    domain_of:
    - Process
    - Assay
    range: Dura
    required: true
    multivalued: true
  outputs:
    name: outputs
    description: Specimens produced as output of this process.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: CultureDura
    domain_of:
    - Process
    range: Sample
    multivalued: true
  protocol:
    name: protocol
    description: The SOP/method this activity followed.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: CultureDura
    domain_of:
    - Activity
    range: Protocol
    recommended: true
  performed_on:
    name: performed_on
    description: Date the activity was carried out.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: CultureDura
    domain_of:
    - Activity
    range: date
  id:
    name: id
    description: Technical identifier (UUID/CURIE); becomes hippo-managed later.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    identifier: true
    owner: CultureDura
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: CultureDura
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: CultureDura
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
    owner: CultureDura
    domain_of:
    - NamedThing
    range: string

```
</details></div>