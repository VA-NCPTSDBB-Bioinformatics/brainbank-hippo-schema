---
search:
  boost: 10.0
---

# Class: BankFixedBrain 


_Bank a chemically fixed (formalin-fixed) whole brain or hemisphere._



<div data-search-exclude markdown="1">



URI: [brainbank:BankFixedBrain](https://w3id.org/VA-NCPTSDBB/brainbank/BankFixedBrain)





```mermaid
 classDiagram
    class BankFixedBrain
    click BankFixedBrain href "../BankFixedBrain/"
      Process <|-- BankFixedBrain
        click Process href "../Process/"
      
      BankFixedBrain : brain
        
          
    
        
        
        BankFixedBrain --> "0..1" Brain : brain
        click Brain href "../Brain/"
    

        
      BankFixedBrain : category
        
      BankFixedBrain : description
        
      BankFixedBrain : donor
        
          
    
        
        
        BankFixedBrain --> "0..1" Donor : donor
        click Donor href "../Donor/"
    

        
      BankFixedBrain : id
        
      BankFixedBrain : inputs
        
          
    
        
        
        BankFixedBrain --> "*" Sample : inputs
        click Sample href "../Sample/"
    

        
      BankFixedBrain : name
        
      BankFixedBrain : outputs
        
          
    
        
        
        BankFixedBrain --> "*" Sample : outputs
        click Sample href "../Sample/"
    

        
      BankFixedBrain : performed_on
        
      BankFixedBrain : protocol
        
          
    
        
        
        BankFixedBrain --> "0..1 _recommended_" Protocol : protocol
        click Protocol href "../Protocol/"
    

        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Activity](Activity.md)
        * [Process](Process.md)
            * **BankFixedBrain**


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [donor](donor.md) | 0..1 <br/> [Donor](Donor.md) | The donor whose fixed brain is being banked | direct |
| [brain](brain.md) | 0..1 <br/> [Brain](Brain.md) | The fixed brain specimen being banked | direct |
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
| self | brainbank:BankFixedBrain |
| native | brainbank:BankFixedBrain |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: BankFixedBrain
description: Bank a chemically fixed (formalin-fixed) whole brain or hemisphere.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Process
attributes:
  donor:
    name: donor
    description: The donor whose fixed brain is being banked.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    domain_of:
    - BankFreshBrain
    - BankFixedBrain
    - Sample
    range: Donor
  brain:
    name: brain
    description: The fixed brain specimen being banked.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    domain_of:
    - BankFixedBrain
    - SectionFixedBrain
    range: Brain

```
</details>

### Induced

<details>
```yaml
name: BankFixedBrain
description: Bank a chemically fixed (formalin-fixed) whole brain or hemisphere.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Process
attributes:
  donor:
    name: donor
    description: The donor whose fixed brain is being banked.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    owner: BankFixedBrain
    domain_of:
    - BankFreshBrain
    - BankFixedBrain
    - Sample
    range: Donor
  brain:
    name: brain
    description: The fixed brain specimen being banked.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    owner: BankFixedBrain
    domain_of:
    - BankFixedBrain
    - SectionFixedBrain
    range: Brain
  inputs:
    name: inputs
    description: Input specimens consumed or transformed by this process.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: BankFixedBrain
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
    owner: BankFixedBrain
    domain_of:
    - Process
    range: Sample
    multivalued: true
  protocol:
    name: protocol
    description: The SOP/method this activity followed.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BankFixedBrain
    domain_of:
    - Activity
    range: Protocol
    recommended: true
  performed_on:
    name: performed_on
    description: Date the activity was carried out.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BankFixedBrain
    domain_of:
    - Activity
    range: date
  id:
    name: id
    description: Technical identifier (UUID/CURIE); becomes hippo-managed later.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    identifier: true
    owner: BankFixedBrain
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BankFixedBrain
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BankFixedBrain
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
    owner: BankFixedBrain
    domain_of:
    - NamedThing
    range: string

```
</details></div>