---
search:
  boost: 10.0
---

# Class: BlockDura 


_Block dura mater tissue into smaller pieces for histology or molecular processing._



<div data-search-exclude markdown="1">



URI: [brainbank:BlockDura](https://w3id.org/VA-NCPTSDBB/brainbank/BlockDura)





```mermaid
 classDiagram
    class BlockDura
    click BlockDura href "../BlockDura/"
      Process <|-- BlockDura
        click Process href "../Process/"
      
      BlockDura : category
        
      BlockDura : description
        
      BlockDura : dura_blocks
        
          
    
        
        
        BlockDura --> "1..*" DuraBlock : dura_blocks
        click DuraBlock href "../DuraBlock/"
    

        
      BlockDura : id
        
      BlockDura : inputs
        
          
    
        
        
        BlockDura --> "1..*" Dura : inputs
        click Dura href "../Dura/"
    

        
      BlockDura : name
        
      BlockDura : outputs
        
          
    
        
        
        BlockDura --> "*" Sample : outputs
        click Sample href "../Sample/"
    

        
      BlockDura : performed_on
        
      BlockDura : protocol
        
          
    
        
        
        BlockDura --> "0..1 _recommended_" Protocol : protocol
        click Protocol href "../Protocol/"
    

        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Activity](Activity.md)
        * [Process](Process.md)
            * **BlockDura**


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [dura_blocks](dura_blocks.md) | 1..* <br/> [DuraBlock](DuraBlock.md) | Dura blocks produced by this blocking process | direct |
| [inputs](inputs.md) | 1..* <br/> [Dura](Dura.md) | Input specimens consumed or transformed by this process | [Process](Process.md) |
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
| self | brainbank:BlockDura |
| native | brainbank:BlockDura |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: BlockDura
description: Block dura mater tissue into smaller pieces for histology or molecular
  processing.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Process
slot_usage:
  inputs:
    name: inputs
    range: Dura
    required: true
attributes:
  dura_blocks:
    name: dura_blocks
    description: Dura blocks produced by this blocking process.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    domain_of:
    - BlockDura
    range: DuraBlock
    required: true
    multivalued: true

```
</details>

### Induced

<details>
```yaml
name: BlockDura
description: Block dura mater tissue into smaller pieces for histology or molecular
  processing.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Process
slot_usage:
  inputs:
    name: inputs
    range: Dura
    required: true
attributes:
  dura_blocks:
    name: dura_blocks
    description: Dura blocks produced by this blocking process.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    owner: BlockDura
    domain_of:
    - BlockDura
    range: DuraBlock
    required: true
    multivalued: true
  inputs:
    name: inputs
    description: Input specimens consumed or transformed by this process.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: BlockDura
    domain_of:
    - Process
    - Assay
    range: Dura
    required: true
    multivalued: true
  outputs:
    name: outputs
    description: Specimens produced as output of this process.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: BlockDura
    domain_of:
    - Process
    range: Sample
    multivalued: true
  protocol:
    name: protocol
    description: The SOP/method this activity followed.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BlockDura
    domain_of:
    - Activity
    range: Protocol
    recommended: true
  performed_on:
    name: performed_on
    description: Date the activity was carried out.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BlockDura
    domain_of:
    - Activity
    range: date
  id:
    name: id
    description: Technical identifier (UUID/CURIE); becomes hippo-managed later.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    identifier: true
    owner: BlockDura
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BlockDura
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BlockDura
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
    owner: BlockDura
    domain_of:
    - NamedThing
    range: string

```
</details></div>