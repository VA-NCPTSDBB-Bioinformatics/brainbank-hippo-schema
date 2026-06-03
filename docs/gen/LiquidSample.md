---
search:
  boost: 10.0
---

# Class: LiquidSample 


_A liquid biological specimen or extract (e.g. CSF, blood aliquot, nucleic-acid extract)._



<div data-search-exclude markdown="1">



URI: [brainbank:LiquidSample](https://w3id.org/VA-NCPTSDBB/brainbank/LiquidSample)





```mermaid
 classDiagram
    class LiquidSample
    click LiquidSample href "../LiquidSample/"
      Sample <|-- LiquidSample
        click Sample href "../Sample/"
      

      LiquidSample <|-- CSF
        click CSF href "../CSF/"
      LiquidSample <|-- Blood
        click Blood href "../Blood/"
      LiquidSample <|-- Cells
        click Cells href "../Cells/"
      LiquidSample <|-- RNA
        click RNA href "../RNA/"
      LiquidSample <|-- DNA
        click DNA href "../DNA/"
      

      LiquidSample : anatomical_site
        
          
    
        
        
        LiquidSample --> "*" AnatomicalStructure : anatomical_site
        click AnatomicalStructure href "../AnatomicalStructure/"
    

        
      LiquidSample : category
        
      LiquidSample : container
        
          
    
        
        
        LiquidSample --> "0..1" Container : container
        click Container href "../Container/"
    

        
      LiquidSample : derived_from
        
          
    
        
        
        LiquidSample --> "0..1" LiquidSample : derived_from
        click LiquidSample href "../LiquidSample/"
    

        
      LiquidSample : description
        
      LiquidSample : donor
        
          
    
        
        
        LiquidSample --> "1" Donor : donor
        click Donor href "../Donor/"
    

        
      LiquidSample : format
        
          
    
        
        
        LiquidSample --> "0..1" LiquidSampleFormat : format
        click LiquidSampleFormat href "../LiquidSampleFormat/"
    

        
      LiquidSample : id
        
      LiquidSample : name
        
      LiquidSample : produced_by
        
          
    
        
        
        LiquidSample --> "0..1" Process : produced_by
        click Process href "../Process/"
    

        
      LiquidSample : sample_id
        
      LiquidSample : volume
        
          
    
        
        
        LiquidSample --> "0..1" Volume : volume
        click Volume href "../Volume/"
    

        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Sample](Sample.md)
        * **LiquidSample**
            * [CSF](CSF.md)
            * [Blood](Blood.md)
            * [Cells](Cells.md)
            * [RNA](RNA.md)
            * [DNA](DNA.md)


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [format](format.md) | 0..1 <br/> [LiquidSampleFormat](LiquidSampleFormat.md) | Aliquot format of this liquid specimen | direct |
| [volume](volume.md) | 0..1 <br/> [Volume](Volume.md) | Volume of the liquid specimen | direct |
| [sample_id](sample_id.md) | 1 <br/> [String](String.md) | Business identifier (human-facing sample/specimen ID) | [Sample](Sample.md) |
| [donor](donor.md) | 1 <br/> [Donor](Donor.md) | The deceased donor this sample was taken from | [Sample](Sample.md) |
| [anatomical_site](anatomical_site.md) | * <br/> [AnatomicalStructure](AnatomicalStructure.md) | Anatomical region(s) from which this sample was collected | [Sample](Sample.md) |
| [container](container.md) | 0..1 <br/> [Container](Container.md) | The storage container currently holding this sample | [Sample](Sample.md) |
| [derived_from](derived_from.md) | 0..1 <br/> [LiquidSample](LiquidSample.md) | Parent specimen this sample was produced from | [Sample](Sample.md) |
| [produced_by](produced_by.md) | 0..1 <br/> [Process](Process.md) | The processing event that created this sample | [Sample](Sample.md) |
| [id](id.md) | 1 <br/> [Uriorcurie](Uriorcurie.md) | Technical identifier (UUID/CURIE); becomes hippo-managed later | [NamedThing](NamedThing.md) |
| [name](name.md) | 1 <br/> [String](String.md) | Human-readable label for the entity | [NamedThing](NamedThing.md) |
| [description](description.md) | 0..1 <br/> [String](String.md) | Free-text narrative description of the entity | [NamedThing](NamedThing.md) |
| [category](category.md) | 0..1 <br/> [String](String.md) | Names the concrete class of this instance | [NamedThing](NamedThing.md) |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [CSF](CSF.md) | [derived_from](derived_from.md) | range | [LiquidSample](LiquidSample.md) |
| [Blood](Blood.md) | [derived_from](derived_from.md) | range | [LiquidSample](LiquidSample.md) |
| [Cells](Cells.md) | [derived_from](derived_from.md) | range | [LiquidSample](LiquidSample.md) |
| [RNA](RNA.md) | [derived_from](derived_from.md) | range | [LiquidSample](LiquidSample.md) |
| [DNA](DNA.md) | [derived_from](derived_from.md) | range | [LiquidSample](LiquidSample.md) |
| [LiquidSample](LiquidSample.md) | [derived_from](derived_from.md) | range | [LiquidSample](LiquidSample.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:LiquidSample |
| native | brainbank:LiquidSample |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: LiquidSample
description: A liquid biological specimen or extract (e.g. CSF, blood aliquot, nucleic-acid
  extract).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Sample
slot_usage:
  derived_from:
    name: derived_from
    range: LiquidSample
attributes:
  format:
    name: format
    description: Aliquot format of this liquid specimen.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    domain_of:
    - SolidSample
    - LiquidSample
    range: LiquidSampleFormat
  volume:
    name: volume
    description: Volume of the liquid specimen.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    domain_of:
    - LiquidSample
    range: Volume

```
</details>

### Induced

<details>
```yaml
name: LiquidSample
description: A liquid biological specimen or extract (e.g. CSF, blood aliquot, nucleic-acid
  extract).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Sample
slot_usage:
  derived_from:
    name: derived_from
    range: LiquidSample
attributes:
  format:
    name: format
    description: Aliquot format of this liquid specimen.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    owner: LiquidSample
    domain_of:
    - SolidSample
    - LiquidSample
    range: LiquidSampleFormat
  volume:
    name: volume
    description: Volume of the liquid specimen.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: LiquidSample
    domain_of:
    - LiquidSample
    range: Volume
  sample_id:
    name: sample_id
    description: Business identifier (human-facing sample/specimen ID).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: LiquidSample
    domain_of:
    - Sample
    range: string
    required: true
  donor:
    name: donor
    description: The deceased donor this sample was taken from.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    owner: LiquidSample
    domain_of:
    - BankFreshBrain
    - BankFixedBrain
    - Sample
    range: Donor
    required: true
  anatomical_site:
    name: anatomical_site
    description: Anatomical region(s) from which this sample was collected.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: LiquidSample
    domain_of:
    - Sample
    range: AnatomicalStructure
    multivalued: true
  container:
    name: container
    description: The storage container currently holding this sample.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: LiquidSample
    domain_of:
    - Sample
    range: Container
  derived_from:
    name: derived_from
    description: Parent specimen this sample was produced from.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: LiquidSample
    domain_of:
    - Sample
    range: LiquidSample
  produced_by:
    name: produced_by
    description: The processing event that created this sample.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: LiquidSample
    domain_of:
    - Sample
    - Dataset
    range: Process
  id:
    name: id
    description: Technical identifier (UUID/CURIE); becomes hippo-managed later.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    identifier: true
    owner: LiquidSample
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: LiquidSample
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: LiquidSample
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
    owner: LiquidSample
    domain_of:
    - NamedThing
    range: string

```
</details></div>