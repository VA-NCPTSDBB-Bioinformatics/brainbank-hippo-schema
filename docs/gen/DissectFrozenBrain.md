---
search:
  boost: 10.0
---

# Class: DissectFrozenBrain 


_Dissect a frozen brain or brain region into named CNS sections for molecular assays._



<div data-search-exclude markdown="1">



URI: [brainbank:DissectFrozenBrain](https://w3id.org/VA-NCPTSDBB/brainbank/DissectFrozenBrain)





```mermaid
 classDiagram
    class DissectFrozenBrain
    click DissectFrozenBrain href "../DissectFrozenBrain/"
      Process <|-- DissectFrozenBrain
        click Process href "../Process/"
      
      DissectFrozenBrain : category
        
      DissectFrozenBrain : description
        
      DissectFrozenBrain : id
        
      DissectFrozenBrain : inputs
        
          
    
        
        
        DissectFrozenBrain --> "1..*" CNSSection : inputs
        click CNSSection href "../CNSSection/"
    

        
      DissectFrozenBrain : name
        
      DissectFrozenBrain : new_samples
        
          
    
        
        
        DissectFrozenBrain --> "1..*" CNSSection : new_samples
        click CNSSection href "../CNSSection/"
    

        
      DissectFrozenBrain : outputs
        
          
    
        
        
        DissectFrozenBrain --> "*" Sample : outputs
        click Sample href "../Sample/"
    

        
      DissectFrozenBrain : performed_on
        
      DissectFrozenBrain : protocol
        
          
    
        
        
        DissectFrozenBrain --> "0..1 _recommended_" Protocol : protocol
        click Protocol href "../Protocol/"
    

        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Activity](Activity.md)
        * [Process](Process.md)
            * **DissectFrozenBrain**


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [new_samples](new_samples.md) | 1..* <br/> [CNSSection](CNSSection.md) | CNS sections produced by this dissection | direct |
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
| self | brainbank:DissectFrozenBrain |
| native | brainbank:DissectFrozenBrain |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: DissectFrozenBrain
description: Dissect a frozen brain or brain region into named CNS sections for molecular
  assays.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Process
slot_usage:
  inputs:
    name: inputs
    range: CNSSection
    required: true
attributes:
  new_samples:
    name: new_samples
    description: CNS sections produced by this dissection.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    domain_of:
    - DissectFrozenBrain
    range: CNSSection
    required: true
    multivalued: true

```
</details>

### Induced

<details>
```yaml
name: DissectFrozenBrain
description: Dissect a frozen brain or brain region into named CNS sections for molecular
  assays.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Process
slot_usage:
  inputs:
    name: inputs
    range: CNSSection
    required: true
attributes:
  new_samples:
    name: new_samples
    description: CNS sections produced by this dissection.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    owner: DissectFrozenBrain
    domain_of:
    - DissectFrozenBrain
    range: CNSSection
    required: true
    multivalued: true
  inputs:
    name: inputs
    description: Input specimens consumed or transformed by this process.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: DissectFrozenBrain
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
    owner: DissectFrozenBrain
    domain_of:
    - Process
    range: Sample
    multivalued: true
  protocol:
    name: protocol
    description: The SOP/method this activity followed.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: DissectFrozenBrain
    domain_of:
    - Activity
    range: Protocol
    recommended: true
  performed_on:
    name: performed_on
    description: Date the activity was carried out.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: DissectFrozenBrain
    domain_of:
    - Activity
    range: date
  id:
    name: id
    description: Technical identifier (UUID/CURIE); becomes hippo-managed later.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    identifier: true
    owner: DissectFrozenBrain
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: DissectFrozenBrain
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: DissectFrozenBrain
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
    owner: DissectFrozenBrain
    domain_of:
    - NamedThing
    range: string

```
</details></div>