---
search:
  boost: 10.0
---

# Class: SliceTissueToSlide 


_Base process for cutting tissue into slides and applying an IHC stain. Concrete subclasses specify the tissue type._



<div data-search-exclude markdown="1">



URI: [brainbank:SliceTissueToSlide](https://w3id.org/VA-NCPTSDBB/brainbank/SliceTissueToSlide)





```mermaid
 classDiagram
    class SliceTissueToSlide
    click SliceTissueToSlide href "../SliceTissueToSlide/"
      Process <|-- SliceTissueToSlide
        click Process href "../Process/"
      

      SliceTissueToSlide <|-- CreateBrainSlide
        click CreateBrainSlide href "../CreateBrainSlide/"
      SliceTissueToSlide <|-- CreateSpinalCordSlide
        click CreateSpinalCordSlide href "../CreateSpinalCordSlide/"
      

      SliceTissueToSlide : category
        
      SliceTissueToSlide : description
        
      SliceTissueToSlide : id
        
      SliceTissueToSlide : inputs
        
          
    
        
        
        SliceTissueToSlide --> "*" Sample : inputs
        click Sample href "../Sample/"
    

        
      SliceTissueToSlide : name
        
      SliceTissueToSlide : outputs
        
          
    
        
        
        SliceTissueToSlide --> "*" Sample : outputs
        click Sample href "../Sample/"
    

        
      SliceTissueToSlide : performed_on
        
      SliceTissueToSlide : protocol
        
          
    
        
        
        SliceTissueToSlide --> "0..1 _recommended_" Protocol : protocol
        click Protocol href "../Protocol/"
    

        
      SliceTissueToSlide : stain
        
          
    
        
        
        SliceTissueToSlide --> "0..1" StainType : stain
        click StainType href "../StainType/"
    

        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Activity](Activity.md)
        * [Process](Process.md)
            * **SliceTissueToSlide**
                * [CreateBrainSlide](CreateBrainSlide.md)
                * [CreateSpinalCordSlide](CreateSpinalCordSlide.md)


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [stain](stain.md) | 0..1 <br/> [StainType](StainType.md) | IHC stain applied to the tissue section on the slide | direct |
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
| self | brainbank:SliceTissueToSlide |
| native | brainbank:SliceTissueToSlide |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: SliceTissueToSlide
description: Base process for cutting tissue into slides and applying an IHC stain.
  Concrete subclasses specify the tissue type.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Process
attributes:
  stain:
    name: stain
    description: IHC stain applied to the tissue section on the slide.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    domain_of:
    - SliceTissueToSlide
    - ImageDataset
    - ImagingAssay
    range: StainType

```
</details>

### Induced

<details>
```yaml
name: SliceTissueToSlide
description: Base process for cutting tissue into slides and applying an IHC stain.
  Concrete subclasses specify the tissue type.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Process
attributes:
  stain:
    name: stain
    description: IHC stain applied to the tissue section on the slide.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    owner: SliceTissueToSlide
    domain_of:
    - SliceTissueToSlide
    - ImageDataset
    - ImagingAssay
    range: StainType
  inputs:
    name: inputs
    description: Input specimens consumed or transformed by this process.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: SliceTissueToSlide
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
    owner: SliceTissueToSlide
    domain_of:
    - Process
    range: Sample
    multivalued: true
  protocol:
    name: protocol
    description: The SOP/method this activity followed.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: SliceTissueToSlide
    domain_of:
    - Activity
    range: Protocol
    recommended: true
  performed_on:
    name: performed_on
    description: Date the activity was carried out.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: SliceTissueToSlide
    domain_of:
    - Activity
    range: date
  id:
    name: id
    description: Technical identifier (UUID/CURIE); becomes hippo-managed later.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    identifier: true
    owner: SliceTissueToSlide
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: SliceTissueToSlide
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: SliceTissueToSlide
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
    owner: SliceTissueToSlide
    domain_of:
    - NamedThing
    range: string

```
</details></div>