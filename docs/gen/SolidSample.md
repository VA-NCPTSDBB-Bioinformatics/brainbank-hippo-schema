---
search:
  boost: 10.0
---

# Class: SolidSample 


_A solid or semi-solid tissue specimen (e.g. a tissue block, section, or slab)._



<div data-search-exclude markdown="1">



URI: [brainbank:SolidSample](https://w3id.org/VA-NCPTSDBB/brainbank/SolidSample)





```mermaid
 classDiagram
    class SolidSample
    click SolidSample href "../SolidSample/"
      Sample <|-- SolidSample
        click Sample href "../Sample/"
      

      SolidSample <|-- CNSSection
        click CNSSection href "../CNSSection/"
      SolidSample <|-- Brain
        click Brain href "../Brain/"
      SolidSample <|-- Dura
        click Dura href "../Dura/"
      SolidSample <|-- Skin
        click Skin href "../Skin/"
      SolidSample <|-- Muscle
        click Muscle href "../Muscle/"
      SolidSample <|-- BloodVessel
        click BloodVessel href "../BloodVessel/"
      SolidSample <|-- CSFPellet
        click CSFPellet href "../CSFPellet/"
      SolidSample <|-- SpinalCordSlide
        click SpinalCordSlide href "../SpinalCordSlide/"
      SolidSample <|-- Section
        click Section href "../Section/"
      

      SolidSample : anatomical_site
        
          
    
        
        
        SolidSample --> "*" AnatomicalStructure : anatomical_site
        click AnatomicalStructure href "../AnatomicalStructure/"
    

        
      SolidSample : category
        
      SolidSample : container
        
          
    
        
        
        SolidSample --> "0..1" Container : container
        click Container href "../Container/"
    

        
      SolidSample : derived_from
        
          
    
        
        
        SolidSample --> "0..1" SolidSample : derived_from
        click SolidSample href "../SolidSample/"
    

        
      SolidSample : description
        
      SolidSample : donor
        
          
    
        
        
        SolidSample --> "1" Donor : donor
        click Donor href "../Donor/"
    

        
      SolidSample : format
        
          
    
        
        
        SolidSample --> "1" SolidSampleFormat : format
        click SolidSampleFormat href "../SolidSampleFormat/"
    

        
      SolidSample : id
        
      SolidSample : mass
        
          
    
        
        
        SolidSample --> "0..1" Mass : mass
        click Mass href "../Mass/"
    

        
      SolidSample : name
        
      SolidSample : produced_by
        
          
    
        
        
        SolidSample --> "0..1" Process : produced_by
        click Process href "../Process/"
    

        
      SolidSample : sample_id
        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Sample](Sample.md)
        * **SolidSample**
            * [CNSSection](CNSSection.md)
            * [Brain](Brain.md)
            * [Dura](Dura.md)
            * [Skin](Skin.md)
            * [Muscle](Muscle.md)
            * [BloodVessel](BloodVessel.md)
            * [CSFPellet](CSFPellet.md)
            * [SpinalCordSlide](SpinalCordSlide.md)
            * [Section](Section.md)


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [format](format.md) | 1 <br/> [SolidSampleFormat](SolidSampleFormat.md) | Physical format of this solid specimen (e | direct |
| [mass](mass.md) | 0..1 <br/> [Mass](Mass.md) | Mass of the specimen | direct |
| [sample_id](sample_id.md) | 1 <br/> [String](String.md) | Business identifier (human-facing sample/specimen ID) | [Sample](Sample.md) |
| [donor](donor.md) | 1 <br/> [Donor](Donor.md) | The deceased donor this sample was taken from | [Sample](Sample.md) |
| [anatomical_site](anatomical_site.md) | * <br/> [AnatomicalStructure](AnatomicalStructure.md) | Anatomical region(s) from which this sample was collected | [Sample](Sample.md) |
| [container](container.md) | 0..1 <br/> [Container](Container.md) | The storage container currently holding this sample | [Sample](Sample.md) |
| [derived_from](derived_from.md) | 0..1 <br/> [SolidSample](SolidSample.md) | Parent specimen this sample was produced from | [Sample](Sample.md) |
| [produced_by](produced_by.md) | 0..1 <br/> [Process](Process.md) | The processing event that created this sample | [Sample](Sample.md) |
| [id](id.md) | 1 <br/> [Uriorcurie](Uriorcurie.md) | Technical identifier (UUID/CURIE); becomes hippo-managed later | [NamedThing](NamedThing.md) |
| [name](name.md) | 1 <br/> [String](String.md) | Human-readable label for the entity | [NamedThing](NamedThing.md) |
| [description](description.md) | 0..1 <br/> [String](String.md) | Free-text narrative description of the entity | [NamedThing](NamedThing.md) |
| [category](category.md) | 0..1 <br/> [String](String.md) | Names the concrete class of this instance | [NamedThing](NamedThing.md) |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [CNSSection](CNSSection.md) | [derived_from](derived_from.md) | range | [SolidSample](SolidSample.md) |
| [Cerebellum](Cerebellum.md) | [derived_from](derived_from.md) | range | [SolidSample](SolidSample.md) |
| [Cerebrum](Cerebrum.md) | [derived_from](derived_from.md) | range | [SolidSample](SolidSample.md) |
| [Hemisphere](Hemisphere.md) | [derived_from](derived_from.md) | range | [SolidSample](SolidSample.md) |
| [Medulla](Medulla.md) | [derived_from](derived_from.md) | range | [SolidSample](SolidSample.md) |
| [OlfactoryBulb](OlfactoryBulb.md) | [derived_from](derived_from.md) | range | [SolidSample](SolidSample.md) |
| [PinealGland](PinealGland.md) | [derived_from](derived_from.md) | range | [SolidSample](SolidSample.md) |
| [Pons](Pons.md) | [derived_from](derived_from.md) | range | [SolidSample](SolidSample.md) |
| [SubstantiaNigra](SubstantiaNigra.md) | [derived_from](derived_from.md) | range | [SolidSample](SolidSample.md) |
| [ChoroidPlexus](ChoroidPlexus.md) | [derived_from](derived_from.md) | range | [SolidSample](SolidSample.md) |
| [Pituitary](Pituitary.md) | [derived_from](derived_from.md) | range | [SolidSample](SolidSample.md) |
| [SpinalCord](SpinalCord.md) | [derived_from](derived_from.md) | range | [SolidSample](SolidSample.md) |
| [SpinalCordBlock](SpinalCordBlock.md) | [derived_from](derived_from.md) | range | [SolidSample](SolidSample.md) |
| [Brain](Brain.md) | [derived_from](derived_from.md) | range | [SolidSample](SolidSample.md) |
| [Dura](Dura.md) | [derived_from](derived_from.md) | range | [SolidSample](SolidSample.md) |
| [DuraBlock](DuraBlock.md) | [derived_from](derived_from.md) | range | [SolidSample](SolidSample.md) |
| [Skin](Skin.md) | [derived_from](derived_from.md) | range | [SolidSample](SolidSample.md) |
| [Muscle](Muscle.md) | [derived_from](derived_from.md) | range | [SolidSample](SolidSample.md) |
| [MuscleBlock](MuscleBlock.md) | [derived_from](derived_from.md) | range | [SolidSample](SolidSample.md) |
| [BloodVessel](BloodVessel.md) | [derived_from](derived_from.md) | range | [SolidSample](SolidSample.md) |
| [CSFPellet](CSFPellet.md) | [derived_from](derived_from.md) | range | [SolidSample](SolidSample.md) |
| [SpinalCordSlide](SpinalCordSlide.md) | [derived_from](derived_from.md) | range | [SolidSample](SolidSample.md) |
| [Section](Section.md) | [derived_from](derived_from.md) | range | [SolidSample](SolidSample.md) |
| [HorizontalSection](HorizontalSection.md) | [derived_from](derived_from.md) | range | [SolidSample](SolidSample.md) |
| [SagittalSection](SagittalSection.md) | [derived_from](derived_from.md) | range | [SolidSample](SolidSample.md) |
| [CoronalSection](CoronalSection.md) | [derived_from](derived_from.md) | range | [SolidSample](SolidSample.md) |
| [BankFreshBrain](BankFreshBrain.md) | [other_sections](other_sections.md) | range | [SolidSample](SolidSample.md) |
| [SolidSample](SolidSample.md) | [derived_from](derived_from.md) | range | [SolidSample](SolidSample.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:SolidSample |
| native | brainbank:SolidSample |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: SolidSample
description: A solid or semi-solid tissue specimen (e.g. a tissue block, section,
  or slab).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Sample
slot_usage:
  derived_from:
    name: derived_from
    range: SolidSample
attributes:
  format:
    name: format
    description: Physical format of this solid specimen (e.g. Slab, Block, Section).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    domain_of:
    - SolidSample
    - LiquidSample
    range: SolidSampleFormat
    required: true
  mass:
    name: mass
    description: Mass of the specimen.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    domain_of:
    - SolidSample
    range: Mass

```
</details>

### Induced

<details>
```yaml
name: SolidSample
description: A solid or semi-solid tissue specimen (e.g. a tissue block, section,
  or slab).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Sample
slot_usage:
  derived_from:
    name: derived_from
    range: SolidSample
attributes:
  format:
    name: format
    description: Physical format of this solid specimen (e.g. Slab, Block, Section).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: SolidSample
    domain_of:
    - SolidSample
    - LiquidSample
    range: SolidSampleFormat
    required: true
  mass:
    name: mass
    description: Mass of the specimen.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: SolidSample
    domain_of:
    - SolidSample
    range: Mass
  sample_id:
    name: sample_id
    description: Business identifier (human-facing sample/specimen ID).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: SolidSample
    domain_of:
    - Sample
    range: string
    required: true
  donor:
    name: donor
    description: The deceased donor this sample was taken from.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    owner: SolidSample
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
    owner: SolidSample
    domain_of:
    - Sample
    range: AnatomicalStructure
    multivalued: true
  container:
    name: container
    description: The storage container currently holding this sample.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: SolidSample
    domain_of:
    - Sample
    range: Container
  derived_from:
    name: derived_from
    description: Parent specimen this sample was produced from.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: SolidSample
    domain_of:
    - Sample
    range: SolidSample
  produced_by:
    name: produced_by
    description: The processing event that created this sample.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: SolidSample
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
    owner: SolidSample
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: SolidSample
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: SolidSample
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
    owner: SolidSample
    domain_of:
    - NamedThing
    range: string

```
</details></div>