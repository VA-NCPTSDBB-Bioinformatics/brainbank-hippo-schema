---
search:
  boost: 10.0
---

# Class: CultureTissue 


_Abstract base for tissue-culture processes that establish cell cultures from brain bank specimens._



<div data-search-exclude markdown="1">


* __NOTE__: this is an abstract class and should not be instantiated directly


URI: [brainbank:CultureTissue](https://w3id.org/VA-NCPTSDBB/brainbank/CultureTissue)





```mermaid
 classDiagram
    class CultureTissue
    click CultureTissue href "../CultureTissue/"
      Process <|-- CultureTissue
        click Process href "../Process/"
      

      CultureTissue <|-- CultureDura
        click CultureDura href "../CultureDura/"
      CultureTissue <|-- CultureSkin
        click CultureSkin href "../CultureSkin/"
      

      CultureTissue : category
        
      CultureTissue : culture_media
        
          
    
        
        
        CultureTissue --> "0..1" CultureMedia : culture_media
        click CultureMedia href "../CultureMedia/"
    

        
      CultureTissue : description
        
      CultureTissue : id
        
      CultureTissue : inputs
        
          
    
        
        
        CultureTissue --> "*" Sample : inputs
        click Sample href "../Sample/"
    

        
      CultureTissue : name
        
      CultureTissue : outputs
        
          
    
        
        
        CultureTissue --> "*" Sample : outputs
        click Sample href "../Sample/"
    

        
      CultureTissue : performed_on
        
      CultureTissue : protocol
        
          
    
        
        
        CultureTissue --> "0..1 _recommended_" Protocol : protocol
        click Protocol href "../Protocol/"
    

        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Activity](Activity.md)
        * [Process](Process.md)
            * **CultureTissue**
                * [CultureDura](CultureDura.md)
                * [CultureSkin](CultureSkin.md)


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [culture_media](culture_media.md) | 0..1 <br/> [CultureMedia](CultureMedia.md) | Culture medium used to maintain the tissue or cells during culture | direct |
| [inputs](inputs.md) | * <br/> [Sample](Sample.md) | Input specimens consumed or transformed by this process | [Process](Process.md) |
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
| self | brainbank:CultureTissue |
| native | brainbank:CultureTissue |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: CultureTissue
description: Abstract base for tissue-culture processes that establish cell cultures
  from brain bank specimens.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Process
abstract: true
attributes:
  culture_media:
    name: culture_media
    description: Culture medium used to maintain the tissue or cells during culture.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    domain_of:
    - BankSkin
    - CultureTissue
    range: CultureMedia

```
</details>

### Induced

<details>
```yaml
name: CultureTissue
description: Abstract base for tissue-culture processes that establish cell cultures
  from brain bank specimens.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Process
abstract: true
attributes:
  culture_media:
    name: culture_media
    description: Culture medium used to maintain the tissue or cells during culture.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    owner: CultureTissue
    domain_of:
    - BankSkin
    - CultureTissue
    range: CultureMedia
  inputs:
    name: inputs
    description: Input specimens consumed or transformed by this process.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: CultureTissue
    domain_of:
    - Process
    - Assay
    range: Sample
    multivalued: true
  outputs:
    name: outputs
    description: Specimens produced as output of this process.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: CultureTissue
    domain_of:
    - Process
    range: Sample
    multivalued: true
  protocol:
    name: protocol
    description: The SOP/method this activity followed.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: CultureTissue
    domain_of:
    - Activity
    range: Protocol
    recommended: true
  performed_on:
    name: performed_on
    description: Date the activity was carried out.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: CultureTissue
    domain_of:
    - Activity
    range: date
  id:
    name: id
    description: Technical identifier (UUID/CURIE); becomes hippo-managed later.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    identifier: true
    owner: CultureTissue
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: CultureTissue
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: CultureTissue
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
    owner: CultureTissue
    domain_of:
    - NamedThing
    range: string

```
</details></div>