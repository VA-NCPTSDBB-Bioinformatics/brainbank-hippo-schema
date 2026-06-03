---
search:
  boost: 10.0
---

# Class: MethylationArrayAssay 


_An array-based DNA methylation assay (e.g. Illumina EPIC or 450K)._



<div data-search-exclude markdown="1">



URI: [brainbank:MethylationArrayAssay](https://w3id.org/VA-NCPTSDBB/brainbank/MethylationArrayAssay)





```mermaid
 classDiagram
    class MethylationArrayAssay
    click MethylationArrayAssay href "../MethylationArrayAssay/"
      ArrayAssay <|-- MethylationArrayAssay
        click ArrayAssay href "../ArrayAssay/"
      
      MethylationArrayAssay : array_platform
        
          
    
        
        
        MethylationArrayAssay --> "0..1" ArrayPlatform : array_platform
        click ArrayPlatform href "../ArrayPlatform/"
    

        
      MethylationArrayAssay : assay_type
        
          
    
        
        
        MethylationArrayAssay --> "0..1" AssayType : assay_type
        click AssayType href "../AssayType/"
    

        
      MethylationArrayAssay : category
        
      MethylationArrayAssay : description
        
      MethylationArrayAssay : id
        
      MethylationArrayAssay : inputs
        
          
    
        
        
        MethylationArrayAssay --> "*" Sample : inputs
        click Sample href "../Sample/"
    

        
      MethylationArrayAssay : name
        
      MethylationArrayAssay : performed_on
        
      MethylationArrayAssay : protocol
        
          
    
        
        
        MethylationArrayAssay --> "0..1 _recommended_" Protocol : protocol
        click Protocol href "../Protocol/"
    

        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Activity](Activity.md)
        * [Assay](Assay.md)
            * [ArrayAssay](ArrayAssay.md)
                * **MethylationArrayAssay**


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [array_platform](array_platform.md) | 0..1 <br/> [ArrayPlatform](ArrayPlatform.md) | Microarray platform used in this assay | [ArrayAssay](ArrayAssay.md) |
| [assay_type](assay_type.md) | 0..1 <br/> [AssayType](AssayType.md) | OBI-controlled type of assay performed | [Assay](Assay.md) |
| [inputs](inputs.md) | * <br/> [Sample](Sample.md) | Source samples consumed by this assay | [Assay](Assay.md) |
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
| self | brainbank:MethylationArrayAssay |
| native | brainbank:MethylationArrayAssay |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: MethylationArrayAssay
description: An array-based DNA methylation assay (e.g. Illumina EPIC or 450K).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: ArrayAssay

```
</details>

### Induced

<details>
```yaml
name: MethylationArrayAssay
description: An array-based DNA methylation assay (e.g. Illumina EPIC or 450K).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: ArrayAssay
attributes:
  array_platform:
    name: array_platform
    description: Microarray platform used in this assay.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    owner: MethylationArrayAssay
    domain_of:
    - ArrayDataset
    - ArrayAssay
    range: ArrayPlatform
  assay_type:
    name: assay_type
    description: OBI-controlled type of assay performed.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    owner: MethylationArrayAssay
    domain_of:
    - Dataset
    - Assay
    range: AssayType
  inputs:
    name: inputs
    description: Source samples consumed by this assay.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    owner: MethylationArrayAssay
    domain_of:
    - Process
    - Assay
    range: Sample
    multivalued: true
  protocol:
    name: protocol
    description: The SOP/method this activity followed.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: MethylationArrayAssay
    domain_of:
    - Activity
    range: Protocol
    recommended: true
  performed_on:
    name: performed_on
    description: Date the activity was carried out.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: MethylationArrayAssay
    domain_of:
    - Activity
    range: date
  id:
    name: id
    description: Technical identifier (UUID/CURIE); becomes hippo-managed later.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    identifier: true
    owner: MethylationArrayAssay
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: MethylationArrayAssay
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: MethylationArrayAssay
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
    owner: MethylationArrayAssay
    domain_of:
    - NamedThing
    range: string

```
</details></div>