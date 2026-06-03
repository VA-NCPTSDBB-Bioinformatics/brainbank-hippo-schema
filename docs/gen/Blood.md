---
search:
  boost: 10.0
---

# Class: Blood 


_A blood specimen (serum, plasma, or whole blood aliquot)._



<div data-search-exclude markdown="1">



URI: [brainbank:Blood](https://w3id.org/VA-NCPTSDBB/brainbank/Blood)





```mermaid
 classDiagram
    class Blood
    click Blood href "../Blood/"
      LiquidSample <|-- Blood
        click LiquidSample href "../LiquidSample/"
      
      Blood : anatomical_site
        
          
    
        
        
        Blood --> "*" AnatomicalStructure : anatomical_site
        click AnatomicalStructure href "../AnatomicalStructure/"
    

        
      Blood : category
        
      Blood : container
        
          
    
        
        
        Blood --> "0..1" Container : container
        click Container href "../Container/"
    

        
      Blood : derived_from
        
          
    
        
        
        Blood --> "0..1" LiquidSample : derived_from
        click LiquidSample href "../LiquidSample/"
    

        
      Blood : description
        
      Blood : donor
        
          
    
        
        
        Blood --> "1" Donor : donor
        click Donor href "../Donor/"
    

        
      Blood : format
        
          
    
        
        
        Blood --> "0..1" LiquidSampleFormat : format
        click LiquidSampleFormat href "../LiquidSampleFormat/"
    

        
      Blood : id
        
      Blood : name
        
      Blood : produced_by
        
          
    
        
        
        Blood --> "0..1" Process : produced_by
        click Process href "../Process/"
    

        
      Blood : sample_id
        
      Blood : volume
        
          
    
        
        
        Blood --> "0..1" Volume : volume
        click Volume href "../Volume/"
    

        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Sample](Sample.md)
        * [LiquidSample](LiquidSample.md)
            * **Blood**


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [format](format.md) | 0..1 <br/> [LiquidSampleFormat](LiquidSampleFormat.md) | Aliquot format of this liquid specimen | [LiquidSample](LiquidSample.md) |
| [volume](volume.md) | 0..1 <br/> [Volume](Volume.md) | Volume of the liquid specimen | [LiquidSample](LiquidSample.md) |
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
| [BankBlood](BankBlood.md) | [blood_sample](blood_sample.md) | range | [Blood](Blood.md) |
| [BankBlood](BankBlood.md) | [residual_stock](residual_stock.md) | range | [Blood](Blood.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:Blood |
| native | brainbank:Blood |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: Blood
description: A blood specimen (serum, plasma, or whole blood aliquot).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: LiquidSample

```
</details>

### Induced

<details>
```yaml
name: Blood
description: A blood specimen (serum, plasma, or whole blood aliquot).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: LiquidSample
attributes:
  format:
    name: format
    description: Aliquot format of this liquid specimen.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    owner: Blood
    domain_of:
    - SolidSample
    - LiquidSample
    range: LiquidSampleFormat
  volume:
    name: volume
    description: Volume of the liquid specimen.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: Blood
    domain_of:
    - LiquidSample
    range: Volume
  sample_id:
    name: sample_id
    description: Business identifier (human-facing sample/specimen ID).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: Blood
    domain_of:
    - Sample
    range: string
    required: true
  donor:
    name: donor
    description: The deceased donor this sample was taken from.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    owner: Blood
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
    owner: Blood
    domain_of:
    - Sample
    range: AnatomicalStructure
    multivalued: true
  container:
    name: container
    description: The storage container currently holding this sample.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: Blood
    domain_of:
    - Sample
    range: Container
  derived_from:
    name: derived_from
    description: Parent specimen this sample was produced from.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: Blood
    domain_of:
    - Sample
    range: LiquidSample
  produced_by:
    name: produced_by
    description: The processing event that created this sample.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: Blood
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
    owner: Blood
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: Blood
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: Blood
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
    owner: Blood
    domain_of:
    - NamedThing
    range: string

```
</details></div>