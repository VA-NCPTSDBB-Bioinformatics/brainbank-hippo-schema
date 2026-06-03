---
search:
  boost: 10.0
---

# Class: DissectFixedBrain 


_Dissect a fixed brain or brain region into named CNS sections for histology._



<div data-search-exclude markdown="1">



URI: [brainbank:DissectFixedBrain](https://w3id.org/VA-NCPTSDBB/brainbank/DissectFixedBrain)





```mermaid
 classDiagram
    class DissectFixedBrain
    click DissectFixedBrain href "../DissectFixedBrain/"
      Process <|-- DissectFixedBrain
        click Process href "../Process/"
      
      DissectFixedBrain : category
        
      DissectFixedBrain : description
        
      DissectFixedBrain : id
        
      DissectFixedBrain : inputs
        
          
    
        
        
        DissectFixedBrain --> "1..*" CNSSection : inputs
        click CNSSection href "../CNSSection/"
    

        
      DissectFixedBrain : name
        
      DissectFixedBrain : new_fixed_samples
        
          
    
        
        
        DissectFixedBrain --> "1" CNSSection : new_fixed_samples
        click CNSSection href "../CNSSection/"
    

        
      DissectFixedBrain : outputs
        
          
    
        
        
        DissectFixedBrain --> "*" Sample : outputs
        click Sample href "../Sample/"
    

        
      DissectFixedBrain : performed_on
        
      DissectFixedBrain : protocol
        
          
    
        
        
        DissectFixedBrain --> "0..1 _recommended_" Protocol : protocol
        click Protocol href "../Protocol/"
    

        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Activity](Activity.md)
        * [Process](Process.md)
            * **DissectFixedBrain**


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [new_fixed_samples](new_fixed_samples.md) | 1 <br/> [CNSSection](CNSSection.md) | CNS sections produced by this dissection | direct |
| [inputs](inputs.md) | 1..* <br/> [CNSSection](CNSSection.md) | Input specimens consumed or transformed by this process | [Process](Process.md) |
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
| self | brainbank:DissectFixedBrain |
| native | brainbank:DissectFixedBrain |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: DissectFixedBrain
description: Dissect a fixed brain or brain region into named CNS sections for histology.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Process
slot_usage:
  inputs:
    name: inputs
    range: CNSSection
    required: true
attributes:
  new_fixed_samples:
    name: new_fixed_samples
    description: CNS sections produced by this dissection.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    domain_of:
    - DissectFixedBrain
    range: CNSSection
    required: true

```
</details>

### Induced

<details>
```yaml
name: DissectFixedBrain
description: Dissect a fixed brain or brain region into named CNS sections for histology.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Process
slot_usage:
  inputs:
    name: inputs
    range: CNSSection
    required: true
attributes:
  new_fixed_samples:
    name: new_fixed_samples
    description: CNS sections produced by this dissection.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    owner: DissectFixedBrain
    domain_of:
    - DissectFixedBrain
    range: CNSSection
    required: true
  inputs:
    name: inputs
    description: Input specimens consumed or transformed by this process.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: DissectFixedBrain
    domain_of:
    - Process
    - Assay
    range: CNSSection
    required: true
    multivalued: true
  outputs:
    name: outputs
    description: Specimens produced as output of this process.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: DissectFixedBrain
    domain_of:
    - Process
    range: Sample
    multivalued: true
  protocol:
    name: protocol
    description: The SOP/method this activity followed.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: DissectFixedBrain
    domain_of:
    - Activity
    range: Protocol
    recommended: true
  performed_on:
    name: performed_on
    description: Date the activity was carried out.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: DissectFixedBrain
    domain_of:
    - Activity
    range: date
  id:
    name: id
    description: Technical identifier (UUID/CURIE); becomes hippo-managed later.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    identifier: true
    owner: DissectFixedBrain
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: DissectFixedBrain
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: DissectFixedBrain
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
    owner: DissectFixedBrain
    domain_of:
    - NamedThing
    range: string

```
</details></div>