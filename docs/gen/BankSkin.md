---
search:
  boost: 10.0
---

# Class: BankSkin 


_Bank skin tissue: distribute specimens into frozen and fixed fractions, with optional culture-medium preparation._



<div data-search-exclude markdown="1">



URI: [brainbank:BankSkin](https://w3id.org/VA-NCPTSDBB/brainbank/BankSkin)





```mermaid
 classDiagram
    class BankSkin
    click BankSkin href "../BankSkin/"
      Process <|-- BankSkin
        click Process href "../Process/"
      
      BankSkin : category
        
      BankSkin : culture_media
        
          
    
        
        
        BankSkin --> "0..1" CultureMedia : culture_media
        click CultureMedia href "../CultureMedia/"
    

        
      BankSkin : description
        
      BankSkin : fixed_skin
        
          
    
        
        
        BankSkin --> "*" Skin : fixed_skin
        click Skin href "../Skin/"
    

        
      BankSkin : frozen_skin
        
          
    
        
        
        BankSkin --> "1..*" Skin : frozen_skin
        click Skin href "../Skin/"
    

        
      BankSkin : id
        
      BankSkin : inputs
        
          
    
        
        
        BankSkin --> "*" Sample : inputs
        click Sample href "../Sample/"
    

        
      BankSkin : name
        
      BankSkin : outputs
        
          
    
        
        
        BankSkin --> "*" Sample : outputs
        click Sample href "../Sample/"
    

        
      BankSkin : performed_on
        
      BankSkin : protocol
        
          
    
        
        
        BankSkin --> "0..1 _recommended_" Protocol : protocol
        click Protocol href "../Protocol/"
    

        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Activity](Activity.md)
        * [Process](Process.md)
            * **BankSkin**


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [culture_media](culture_media.md) | 0..1 <br/> [CultureMedia](CultureMedia.md) | Culture medium used if skin tissue is being prepared for cell culture | direct |
| [frozen_skin](frozen_skin.md) | 1..* <br/> [Skin](Skin.md) | Skin specimen(s) snap-frozen for storage | direct |
| [fixed_skin](fixed_skin.md) | * <br/> [Skin](Skin.md) | Skin specimen(s) fixed in formalin | direct |
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
| self | brainbank:BankSkin |
| native | brainbank:BankSkin |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: BankSkin
description: 'Bank skin tissue: distribute specimens into frozen and fixed fractions,
  with optional culture-medium preparation.'
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Process
attributes:
  culture_media:
    name: culture_media
    description: Culture medium used if skin tissue is being prepared for cell culture.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    domain_of:
    - BankSkin
    - CultureTissue
    range: CultureMedia
  frozen_skin:
    name: frozen_skin
    description: Skin specimen(s) snap-frozen for storage.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    domain_of:
    - BankSkin
    range: Skin
    required: true
    multivalued: true
  fixed_skin:
    name: fixed_skin
    description: Skin specimen(s) fixed in formalin.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    domain_of:
    - BankSkin
    range: Skin
    multivalued: true

```
</details>

### Induced

<details>
```yaml
name: BankSkin
description: 'Bank skin tissue: distribute specimens into frozen and fixed fractions,
  with optional culture-medium preparation.'
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Process
attributes:
  culture_media:
    name: culture_media
    description: Culture medium used if skin tissue is being prepared for cell culture.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    owner: BankSkin
    domain_of:
    - BankSkin
    - CultureTissue
    range: CultureMedia
  frozen_skin:
    name: frozen_skin
    description: Skin specimen(s) snap-frozen for storage.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    owner: BankSkin
    domain_of:
    - BankSkin
    range: Skin
    required: true
    multivalued: true
  fixed_skin:
    name: fixed_skin
    description: Skin specimen(s) fixed in formalin.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    owner: BankSkin
    domain_of:
    - BankSkin
    range: Skin
    multivalued: true
  inputs:
    name: inputs
    description: Input specimens consumed or transformed by this process.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: BankSkin
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
    owner: BankSkin
    domain_of:
    - Process
    range: Sample
    multivalued: true
  protocol:
    name: protocol
    description: The SOP/method this activity followed.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BankSkin
    domain_of:
    - Activity
    range: Protocol
    recommended: true
  performed_on:
    name: performed_on
    description: Date the activity was carried out.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BankSkin
    domain_of:
    - Activity
    range: date
  id:
    name: id
    description: Technical identifier (UUID/CURIE); becomes hippo-managed later.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    identifier: true
    owner: BankSkin
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BankSkin
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BankSkin
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
    owner: BankSkin
    domain_of:
    - NamedThing
    range: string

```
</details></div>