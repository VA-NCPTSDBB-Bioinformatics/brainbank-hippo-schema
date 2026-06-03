---
search:
  boost: 10.0
---

# Class: ArrayAssay 


_Abstract base for microarray-based assays._



<div data-search-exclude markdown="1">


* __NOTE__: this is an abstract class and should not be instantiated directly


URI: [brainbank:ArrayAssay](https://w3id.org/VA-NCPTSDBB/brainbank/ArrayAssay)





```mermaid
 classDiagram
    class ArrayAssay
    click ArrayAssay href "../ArrayAssay/"
      Assay <|-- ArrayAssay
        click Assay href "../Assay/"
      

      ArrayAssay <|-- GenotypingAssay
        click GenotypingAssay href "../GenotypingAssay/"
      ArrayAssay <|-- MethylationArrayAssay
        click MethylationArrayAssay href "../MethylationArrayAssay/"
      

      ArrayAssay : array_platform
        
          
    
        
        
        ArrayAssay --> "0..1" ArrayPlatform : array_platform
        click ArrayPlatform href "../ArrayPlatform/"
    

        
      ArrayAssay : assay_type
        
          
    
        
        
        ArrayAssay --> "0..1" AssayType : assay_type
        click AssayType href "../AssayType/"
    

        
      ArrayAssay : category
        
      ArrayAssay : description
        
      ArrayAssay : id
        
      ArrayAssay : inputs
        
          
    
        
        
        ArrayAssay --> "*" Sample : inputs
        click Sample href "../Sample/"
    

        
      ArrayAssay : name
        
      ArrayAssay : performed_on
        
      ArrayAssay : protocol
        
          
    
        
        
        ArrayAssay --> "0..1 _recommended_" Protocol : protocol
        click Protocol href "../Protocol/"
    

        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Activity](Activity.md)
        * [Assay](Assay.md)
            * **ArrayAssay**
                * [GenotypingAssay](GenotypingAssay.md)
                * [MethylationArrayAssay](MethylationArrayAssay.md)


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [array_platform](array_platform.md) | 0..1 <br/> [ArrayPlatform](ArrayPlatform.md) | Microarray platform used in this assay | direct |
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
| self | brainbank:ArrayAssay |
| native | brainbank:ArrayAssay |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ArrayAssay
description: Abstract base for microarray-based assays.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Assay
abstract: true
attributes:
  array_platform:
    name: array_platform
    description: Microarray platform used in this assay.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    domain_of:
    - ArrayDataset
    - ArrayAssay
    range: ArrayPlatform

```
</details>

### Induced

<details>
```yaml
name: ArrayAssay
description: Abstract base for microarray-based assays.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Assay
abstract: true
attributes:
  array_platform:
    name: array_platform
    description: Microarray platform used in this assay.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    owner: ArrayAssay
    domain_of:
    - ArrayDataset
    - ArrayAssay
    range: ArrayPlatform
  assay_type:
    name: assay_type
    description: OBI-controlled type of assay performed.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    owner: ArrayAssay
    domain_of:
    - Dataset
    - Assay
    range: AssayType
  inputs:
    name: inputs
    description: Source samples consumed by this assay.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    owner: ArrayAssay
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
    owner: ArrayAssay
    domain_of:
    - Activity
    range: Protocol
    recommended: true
  performed_on:
    name: performed_on
    description: Date the activity was carried out.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: ArrayAssay
    domain_of:
    - Activity
    range: date
  id:
    name: id
    description: Technical identifier (UUID/CURIE); becomes hippo-managed later.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    identifier: true
    owner: ArrayAssay
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: ArrayAssay
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: ArrayAssay
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
    owner: ArrayAssay
    domain_of:
    - NamedThing
    range: string

```
</details></div>