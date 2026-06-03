---
search:
  boost: 10.0
---

# Class: BankSpinalCord 


_Bank spinal cord tissue: distribute specimens into frozen and formalin-fixed fractions._



<div data-search-exclude markdown="1">



URI: [brainbank:BankSpinalCord](https://w3id.org/VA-NCPTSDBB/brainbank/BankSpinalCord)





```mermaid
 classDiagram
    class BankSpinalCord
    click BankSpinalCord href "../BankSpinalCord/"
      Process <|-- BankSpinalCord
        click Process href "../Process/"
      
      BankSpinalCord : category
        
      BankSpinalCord : description
        
      BankSpinalCord : fixed_spinal_cord
        
          
    
        
        
        BankSpinalCord --> "*" SpinalCord : fixed_spinal_cord
        click SpinalCord href "../SpinalCord/"
    

        
      BankSpinalCord : frozen_spinal_cord
        
          
    
        
        
        BankSpinalCord --> "*" SpinalCord : frozen_spinal_cord
        click SpinalCord href "../SpinalCord/"
    

        
      BankSpinalCord : id
        
      BankSpinalCord : inputs
        
          
    
        
        
        BankSpinalCord --> "*" Sample : inputs
        click Sample href "../Sample/"
    

        
      BankSpinalCord : name
        
      BankSpinalCord : outputs
        
          
    
        
        
        BankSpinalCord --> "*" Sample : outputs
        click Sample href "../Sample/"
    

        
      BankSpinalCord : performed_on
        
      BankSpinalCord : protocol
        
          
    
        
        
        BankSpinalCord --> "0..1 _recommended_" Protocol : protocol
        click Protocol href "../Protocol/"
    

        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Activity](Activity.md)
        * [Process](Process.md)
            * **BankSpinalCord**


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [frozen_spinal_cord](frozen_spinal_cord.md) | * <br/> [SpinalCord](SpinalCord.md) | Spinal cord specimen(s) snap-frozen for storage | direct |
| [fixed_spinal_cord](fixed_spinal_cord.md) | * <br/> [SpinalCord](SpinalCord.md) | Spinal cord specimen(s) fixed in formalin | direct |
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
| self | brainbank:BankSpinalCord |
| native | brainbank:BankSpinalCord |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: BankSpinalCord
description: 'Bank spinal cord tissue: distribute specimens into frozen and formalin-fixed
  fractions.'
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Process
attributes:
  frozen_spinal_cord:
    name: frozen_spinal_cord
    description: Spinal cord specimen(s) snap-frozen for storage.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    domain_of:
    - BankSpinalCord
    range: SpinalCord
    multivalued: true
  fixed_spinal_cord:
    name: fixed_spinal_cord
    description: Spinal cord specimen(s) fixed in formalin.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    domain_of:
    - BankSpinalCord
    range: SpinalCord
    multivalued: true

```
</details>

### Induced

<details>
```yaml
name: BankSpinalCord
description: 'Bank spinal cord tissue: distribute specimens into frozen and formalin-fixed
  fractions.'
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Process
attributes:
  frozen_spinal_cord:
    name: frozen_spinal_cord
    description: Spinal cord specimen(s) snap-frozen for storage.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    owner: BankSpinalCord
    domain_of:
    - BankSpinalCord
    range: SpinalCord
    multivalued: true
  fixed_spinal_cord:
    name: fixed_spinal_cord
    description: Spinal cord specimen(s) fixed in formalin.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    owner: BankSpinalCord
    domain_of:
    - BankSpinalCord
    range: SpinalCord
    multivalued: true
  inputs:
    name: inputs
    description: Input specimens consumed or transformed by this process.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: BankSpinalCord
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
    owner: BankSpinalCord
    domain_of:
    - Process
    range: Sample
    multivalued: true
  protocol:
    name: protocol
    description: The SOP/method this activity followed.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BankSpinalCord
    domain_of:
    - Activity
    range: Protocol
    recommended: true
  performed_on:
    name: performed_on
    description: Date the activity was carried out.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BankSpinalCord
    domain_of:
    - Activity
    range: date
  id:
    name: id
    description: Technical identifier (UUID/CURIE); becomes hippo-managed later.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    identifier: true
    owner: BankSpinalCord
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BankSpinalCord
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BankSpinalCord
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
    owner: BankSpinalCord
    domain_of:
    - NamedThing
    range: string

```
</details></div>