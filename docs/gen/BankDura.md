---
search:
  boost: 10.0
---

# Class: BankDura 


_Bank dura mater tissue, distributing specimens into fixed, frozen, and culture-media fractions._



<div data-search-exclude markdown="1">



URI: [brainbank:BankDura](https://w3id.org/VA-NCPTSDBB/brainbank/BankDura)





```mermaid
 classDiagram
    class BankDura
    click BankDura href "../BankDura/"
      Process <|-- BankDura
        click Process href "../Process/"
      
      BankDura : category
        
      BankDura : description
        
      BankDura : fixed_dura
        
          
    
        
        
        BankDura --> "1..*" Dura : fixed_dura
        click Dura href "../Dura/"
    

        
      BankDura : frozen_dura
        
          
    
        
        
        BankDura --> "1..*" Dura : frozen_dura
        click Dura href "../Dura/"
    

        
      BankDura : id
        
      BankDura : inputs
        
          
    
        
        
        BankDura --> "*" Sample : inputs
        click Sample href "../Sample/"
    

        
      BankDura : media_dura
        
          
    
        
        
        BankDura --> "1..*" Dura : media_dura
        click Dura href "../Dura/"
    

        
      BankDura : name
        
      BankDura : outputs
        
          
    
        
        
        BankDura --> "*" Sample : outputs
        click Sample href "../Sample/"
    

        
      BankDura : performed_on
        
      BankDura : protocol
        
          
    
        
        
        BankDura --> "0..1 _recommended_" Protocol : protocol
        click Protocol href "../Protocol/"
    

        
      BankDura : remainder
        
          
    
        
        
        BankDura --> "0..1" Dura : remainder
        click Dura href "../Dura/"
    

        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Activity](Activity.md)
        * [Process](Process.md)
            * **BankDura**


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [fixed_dura](fixed_dura.md) | 1..* <br/> [Dura](Dura.md) | Dura mater specimen(s) fixed in formalin | direct |
| [frozen_dura](frozen_dura.md) | 1..* <br/> [Dura](Dura.md) | Dura mater specimen(s) snap-frozen | direct |
| [media_dura](media_dura.md) | 1..* <br/> [Dura](Dura.md) | Dura mater specimen(s) placed in culture medium | direct |
| [remainder](remainder.md) | 0..1 <br/> [Dura](Dura.md) | Leftover dura mater tissue after distribution | direct |
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
| self | brainbank:BankDura |
| native | brainbank:BankDura |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: BankDura
description: Bank dura mater tissue, distributing specimens into fixed, frozen, and
  culture-media fractions.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Process
attributes:
  fixed_dura:
    name: fixed_dura
    description: Dura mater specimen(s) fixed in formalin.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    domain_of:
    - BankDura
    range: Dura
    required: true
    multivalued: true
  frozen_dura:
    name: frozen_dura
    description: Dura mater specimen(s) snap-frozen.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    domain_of:
    - BankDura
    range: Dura
    required: true
    multivalued: true
  media_dura:
    name: media_dura
    description: Dura mater specimen(s) placed in culture medium.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    domain_of:
    - BankDura
    range: Dura
    required: true
    multivalued: true
  remainder:
    name: remainder
    description: Leftover dura mater tissue after distribution.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    domain_of:
    - BankDura
    range: Dura

```
</details>

### Induced

<details>
```yaml
name: BankDura
description: Bank dura mater tissue, distributing specimens into fixed, frozen, and
  culture-media fractions.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Process
attributes:
  fixed_dura:
    name: fixed_dura
    description: Dura mater specimen(s) fixed in formalin.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    owner: BankDura
    domain_of:
    - BankDura
    range: Dura
    required: true
    multivalued: true
  frozen_dura:
    name: frozen_dura
    description: Dura mater specimen(s) snap-frozen.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    owner: BankDura
    domain_of:
    - BankDura
    range: Dura
    required: true
    multivalued: true
  media_dura:
    name: media_dura
    description: Dura mater specimen(s) placed in culture medium.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    owner: BankDura
    domain_of:
    - BankDura
    range: Dura
    required: true
    multivalued: true
  remainder:
    name: remainder
    description: Leftover dura mater tissue after distribution.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    owner: BankDura
    domain_of:
    - BankDura
    range: Dura
  inputs:
    name: inputs
    description: Input specimens consumed or transformed by this process.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: BankDura
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
    owner: BankDura
    domain_of:
    - Process
    range: Sample
    multivalued: true
  protocol:
    name: protocol
    description: The SOP/method this activity followed.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BankDura
    domain_of:
    - Activity
    range: Protocol
    recommended: true
  performed_on:
    name: performed_on
    description: Date the activity was carried out.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BankDura
    domain_of:
    - Activity
    range: date
  id:
    name: id
    description: Technical identifier (UUID/CURIE); becomes hippo-managed later.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    identifier: true
    owner: BankDura
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BankDura
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BankDura
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
    owner: BankDura
    domain_of:
    - NamedThing
    range: string

```
</details></div>