---
search:
  boost: 10.0
---

# Class: BlockMuscle 


_Block muscle tissue into smaller pieces for histology or molecular processing._



<div data-search-exclude markdown="1">



URI: [brainbank:BlockMuscle](https://w3id.org/VA-NCPTSDBB/brainbank/BlockMuscle)





```mermaid
 classDiagram
    class BlockMuscle
    click BlockMuscle href "../BlockMuscle/"
      Process <|-- BlockMuscle
        click Process href "../Process/"
      
      BlockMuscle : category
        
      BlockMuscle : description
        
      BlockMuscle : id
        
      BlockMuscle : inputs
        
          
    
        
        
        BlockMuscle --> "1..*" Muscle : inputs
        click Muscle href "../Muscle/"
    

        
      BlockMuscle : muscle_blocks
        
          
    
        
        
        BlockMuscle --> "1..*" MuscleBlock : muscle_blocks
        click MuscleBlock href "../MuscleBlock/"
    

        
      BlockMuscle : name
        
      BlockMuscle : outputs
        
          
    
        
        
        BlockMuscle --> "*" Sample : outputs
        click Sample href "../Sample/"
    

        
      BlockMuscle : performed_on
        
      BlockMuscle : protocol
        
          
    
        
        
        BlockMuscle --> "0..1 _recommended_" Protocol : protocol
        click Protocol href "../Protocol/"
    

        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Activity](Activity.md)
        * [Process](Process.md)
            * **BlockMuscle**


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [muscle_blocks](muscle_blocks.md) | 1..* <br/> [MuscleBlock](MuscleBlock.md) | Muscle blocks produced by this blocking process | direct |
| [inputs](inputs.md) | 1..* <br/> [Muscle](Muscle.md) | Input specimens consumed or transformed by this process | [Process](Process.md) |
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
| self | brainbank:BlockMuscle |
| native | brainbank:BlockMuscle |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: BlockMuscle
description: Block muscle tissue into smaller pieces for histology or molecular processing.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Process
slot_usage:
  inputs:
    name: inputs
    range: Muscle
    required: true
attributes:
  muscle_blocks:
    name: muscle_blocks
    description: Muscle blocks produced by this blocking process.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    domain_of:
    - BlockMuscle
    range: MuscleBlock
    required: true
    multivalued: true

```
</details>

### Induced

<details>
```yaml
name: BlockMuscle
description: Block muscle tissue into smaller pieces for histology or molecular processing.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Process
slot_usage:
  inputs:
    name: inputs
    range: Muscle
    required: true
attributes:
  muscle_blocks:
    name: muscle_blocks
    description: Muscle blocks produced by this blocking process.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    owner: BlockMuscle
    domain_of:
    - BlockMuscle
    range: MuscleBlock
    required: true
    multivalued: true
  inputs:
    name: inputs
    description: Input specimens consumed or transformed by this process.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: BlockMuscle
    domain_of:
    - Process
    - Assay
    range: Muscle
    required: true
    multivalued: true
  outputs:
    name: outputs
    description: Specimens produced as output of this process.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: BlockMuscle
    domain_of:
    - Process
    range: Sample
    multivalued: true
  protocol:
    name: protocol
    description: The SOP/method this activity followed.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BlockMuscle
    domain_of:
    - Activity
    range: Protocol
    recommended: true
  performed_on:
    name: performed_on
    description: Date the activity was carried out.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BlockMuscle
    domain_of:
    - Activity
    range: date
  id:
    name: id
    description: Technical identifier (UUID/CURIE); becomes hippo-managed later.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    identifier: true
    owner: BlockMuscle
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BlockMuscle
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BlockMuscle
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
    owner: BlockMuscle
    domain_of:
    - NamedThing
    range: string

```
</details></div>