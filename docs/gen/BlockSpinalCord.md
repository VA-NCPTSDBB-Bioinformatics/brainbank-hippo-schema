---
search:
  boost: 10.0
---

# Class: BlockSpinalCord 


_Block spinal cord tissue into segments for histology or molecular processing._



<div data-search-exclude markdown="1">



URI: [brainbank:BlockSpinalCord](https://w3id.org/VA-NCPTSDBB/brainbank/BlockSpinalCord)





```mermaid
 classDiagram
    class BlockSpinalCord
    click BlockSpinalCord href "../BlockSpinalCord/"
      Process <|-- BlockSpinalCord
        click Process href "../Process/"
      
      BlockSpinalCord : blocked_spinal_cord
        
          
    
        
        
        BlockSpinalCord --> "0..1" SpinalCordBlock : blocked_spinal_cord
        click SpinalCordBlock href "../SpinalCordBlock/"
    

        
      BlockSpinalCord : category
        
      BlockSpinalCord : description
        
      BlockSpinalCord : id
        
      BlockSpinalCord : inputs
        
          
    
        
        
        BlockSpinalCord --> "*" SpinalCord : inputs
        click SpinalCord href "../SpinalCord/"
    

        
      BlockSpinalCord : name
        
      BlockSpinalCord : outputs
        
          
    
        
        
        BlockSpinalCord --> "*" Sample : outputs
        click Sample href "../Sample/"
    

        
      BlockSpinalCord : performed_on
        
      BlockSpinalCord : protocol
        
          
    
        
        
        BlockSpinalCord --> "0..1 _recommended_" Protocol : protocol
        click Protocol href "../Protocol/"
    

        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Activity](Activity.md)
        * [Process](Process.md)
            * **BlockSpinalCord**


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [blocked_spinal_cord](blocked_spinal_cord.md) | 0..1 <br/> [SpinalCordBlock](SpinalCordBlock.md) | Spinal cord block produced by this blocking process | direct |
| [inputs](inputs.md) | * <br/> [SpinalCord](SpinalCord.md) | Input specimens consumed or transformed by this process | [Process](Process.md) |
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
| self | brainbank:BlockSpinalCord |
| native | brainbank:BlockSpinalCord |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: BlockSpinalCord
description: Block spinal cord tissue into segments for histology or molecular processing.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Process
slot_usage:
  inputs:
    name: inputs
    range: SpinalCord
attributes:
  blocked_spinal_cord:
    name: blocked_spinal_cord
    description: Spinal cord block produced by this blocking process.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    domain_of:
    - BlockSpinalCord
    range: SpinalCordBlock

```
</details>

### Induced

<details>
```yaml
name: BlockSpinalCord
description: Block spinal cord tissue into segments for histology or molecular processing.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Process
slot_usage:
  inputs:
    name: inputs
    range: SpinalCord
attributes:
  blocked_spinal_cord:
    name: blocked_spinal_cord
    description: Spinal cord block produced by this blocking process.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    owner: BlockSpinalCord
    domain_of:
    - BlockSpinalCord
    range: SpinalCordBlock
  inputs:
    name: inputs
    description: Input specimens consumed or transformed by this process.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: BlockSpinalCord
    domain_of:
    - Process
    - Assay
    range: SpinalCord
    multivalued: true
  outputs:
    name: outputs
    description: Specimens produced as output of this process.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: BlockSpinalCord
    domain_of:
    - Process
    range: Sample
    multivalued: true
  protocol:
    name: protocol
    description: The SOP/method this activity followed.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BlockSpinalCord
    domain_of:
    - Activity
    range: Protocol
    recommended: true
  performed_on:
    name: performed_on
    description: Date the activity was carried out.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BlockSpinalCord
    domain_of:
    - Activity
    range: date
  id:
    name: id
    description: Technical identifier (UUID/CURIE); becomes hippo-managed later.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    identifier: true
    owner: BlockSpinalCord
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BlockSpinalCord
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BlockSpinalCord
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
    owner: BlockSpinalCord
    domain_of:
    - NamedThing
    range: string

```
</details></div>