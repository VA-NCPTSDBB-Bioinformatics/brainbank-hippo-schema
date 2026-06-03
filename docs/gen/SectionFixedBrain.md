---
search:
  boost: 10.0
---

# Class: SectionFixedBrain 


_Section (cut) a fixed brain or hemisphere into thin sections for histology._



<div data-search-exclude markdown="1">



URI: [brainbank:SectionFixedBrain](https://w3id.org/VA-NCPTSDBB/brainbank/SectionFixedBrain)





```mermaid
 classDiagram
    class SectionFixedBrain
    click SectionFixedBrain href "../SectionFixedBrain/"
      Process <|-- SectionFixedBrain
        click Process href "../Process/"
      
      SectionFixedBrain : brain
        
          
    
        
        
        SectionFixedBrain --> "0..1" Brain : brain
        click Brain href "../Brain/"
    

        
      SectionFixedBrain : category
        
      SectionFixedBrain : description
        
      SectionFixedBrain : hemisphere
        
          
    
        
        
        SectionFixedBrain --> "0..1" Hemisphere : hemisphere
        click Hemisphere href "../Hemisphere/"
    

        
      SectionFixedBrain : id
        
      SectionFixedBrain : inputs
        
          
    
        
        
        SectionFixedBrain --> "*" Sample : inputs
        click Sample href "../Sample/"
    

        
      SectionFixedBrain : name
        
      SectionFixedBrain : outputs
        
          
    
        
        
        SectionFixedBrain --> "*" Sample : outputs
        click Sample href "../Sample/"
    

        
      SectionFixedBrain : performed_on
        
      SectionFixedBrain : protocol
        
          
    
        
        
        SectionFixedBrain --> "0..1 _recommended_" Protocol : protocol
        click Protocol href "../Protocol/"
    

        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Activity](Activity.md)
        * [Process](Process.md)
            * **SectionFixedBrain**


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [brain](brain.md) | 0..1 <br/> [Brain](Brain.md) | Fixed whole brain being sectioned, if applicable | direct |
| [hemisphere](hemisphere.md) | 0..1 <br/> [Hemisphere](Hemisphere.md) | Fixed hemisphere being sectioned, if applicable | direct |
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
| self | brainbank:SectionFixedBrain |
| native | brainbank:SectionFixedBrain |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: SectionFixedBrain
description: Section (cut) a fixed brain or hemisphere into thin sections for histology.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Process
attributes:
  brain:
    name: brain
    description: Fixed whole brain being sectioned, if applicable.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    domain_of:
    - BankFixedBrain
    - SectionFixedBrain
    range: Brain
  hemisphere:
    name: hemisphere
    description: Fixed hemisphere being sectioned, if applicable.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    domain_of:
    - SectionFixedBrain
    range: Hemisphere

```
</details>

### Induced

<details>
```yaml
name: SectionFixedBrain
description: Section (cut) a fixed brain or hemisphere into thin sections for histology.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Process
attributes:
  brain:
    name: brain
    description: Fixed whole brain being sectioned, if applicable.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    owner: SectionFixedBrain
    domain_of:
    - BankFixedBrain
    - SectionFixedBrain
    range: Brain
  hemisphere:
    name: hemisphere
    description: Fixed hemisphere being sectioned, if applicable.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    owner: SectionFixedBrain
    domain_of:
    - SectionFixedBrain
    range: Hemisphere
  inputs:
    name: inputs
    description: Input specimens consumed or transformed by this process.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: SectionFixedBrain
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
    owner: SectionFixedBrain
    domain_of:
    - Process
    range: Sample
    multivalued: true
  protocol:
    name: protocol
    description: The SOP/method this activity followed.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: SectionFixedBrain
    domain_of:
    - Activity
    range: Protocol
    recommended: true
  performed_on:
    name: performed_on
    description: Date the activity was carried out.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: SectionFixedBrain
    domain_of:
    - Activity
    range: date
  id:
    name: id
    description: Technical identifier (UUID/CURIE); becomes hippo-managed later.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    identifier: true
    owner: SectionFixedBrain
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: SectionFixedBrain
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: SectionFixedBrain
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
    owner: SectionFixedBrain
    domain_of:
    - NamedThing
    range: string

```
</details></div>