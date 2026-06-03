---
search:
  boost: 10.0
---

# Class: Sample 


_An abstract physical specimen obtained from a donor. Concrete subclasses are SolidSample and LiquidSample; brain-bank material types (CNSSection, CSF, Blood, …) extend those in the brainbank extension layer._



<div data-search-exclude markdown="1">


* __NOTE__: this is an abstract class and should not be instantiated directly


URI: [brainbank:Sample](https://w3id.org/VA-NCPTSDBB/brainbank/Sample)





```mermaid
 classDiagram
    class Sample
    click Sample href "../Sample/"
      NamedThing <|-- Sample
        click NamedThing href "../NamedThing/"
      

      Sample <|-- SolidSample
        click SolidSample href "../SolidSample/"
      Sample <|-- LiquidSample
        click LiquidSample href "../LiquidSample/"
      

      Sample : anatomical_site
        
          
    
        
        
        Sample --> "*" AnatomicalStructure : anatomical_site
        click AnatomicalStructure href "../AnatomicalStructure/"
    

        
      Sample : category
        
      Sample : container
        
          
    
        
        
        Sample --> "0..1" Container : container
        click Container href "../Container/"
    

        
      Sample : derived_from
        
          
    
        
        
        Sample --> "0..1" Sample : derived_from
        click Sample href "../Sample/"
    

        
      Sample : description
        
      Sample : donor
        
          
    
        
        
        Sample --> "1" Donor : donor
        click Donor href "../Donor/"
    

        
      Sample : id
        
      Sample : name
        
      Sample : produced_by
        
          
    
        
        
        Sample --> "0..1" Process : produced_by
        click Process href "../Process/"
    

        
      Sample : sample_id
        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * **Sample**
        * [SolidSample](SolidSample.md)
        * [LiquidSample](LiquidSample.md)


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [sample_id](sample_id.md) | 1 <br/> [String](String.md) | Business identifier (human-facing sample/specimen ID) | direct |
| [donor](donor.md) | 1 <br/> [Donor](Donor.md) | The deceased donor this sample was taken from | direct |
| [anatomical_site](anatomical_site.md) | * <br/> [AnatomicalStructure](AnatomicalStructure.md) | Anatomical region(s) from which this sample was collected | direct |
| [container](container.md) | 0..1 <br/> [Container](Container.md) | The storage container currently holding this sample | direct |
| [derived_from](derived_from.md) | 0..1 <br/> [Sample](Sample.md) | Parent specimen this sample was produced from | direct |
| [produced_by](produced_by.md) | 0..1 <br/> [Process](Process.md) | The processing event that created this sample | direct |
| [id](id.md) | 1 <br/> [Uriorcurie](Uriorcurie.md) | Technical identifier (UUID/CURIE); becomes hippo-managed later | [NamedThing](NamedThing.md) |
| [name](name.md) | 1 <br/> [String](String.md) | Human-readable label for the entity | [NamedThing](NamedThing.md) |
| [description](description.md) | 0..1 <br/> [String](String.md) | Free-text narrative description of the entity | [NamedThing](NamedThing.md) |
| [category](category.md) | 0..1 <br/> [String](String.md) | Names the concrete class of this instance | [NamedThing](NamedThing.md) |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [BrainBank](BrainBank.md) | [samples](samples.md) | range | [Sample](Sample.md) |
| [BankFreshBrain](BankFreshBrain.md) | [inputs](inputs.md) | range | [Sample](Sample.md) |
| [BankFreshBrain](BankFreshBrain.md) | [outputs](outputs.md) | range | [Sample](Sample.md) |
| [BankFixedBrain](BankFixedBrain.md) | [inputs](inputs.md) | range | [Sample](Sample.md) |
| [BankFixedBrain](BankFixedBrain.md) | [outputs](outputs.md) | range | [Sample](Sample.md) |
| [BankDura](BankDura.md) | [inputs](inputs.md) | range | [Sample](Sample.md) |
| [BankDura](BankDura.md) | [outputs](outputs.md) | range | [Sample](Sample.md) |
| [BankCSF](BankCSF.md) | [inputs](inputs.md) | range | [Sample](Sample.md) |
| [BankCSF](BankCSF.md) | [outputs](outputs.md) | range | [Sample](Sample.md) |
| [BankBlood](BankBlood.md) | [inputs](inputs.md) | range | [Sample](Sample.md) |
| [BankBlood](BankBlood.md) | [outputs](outputs.md) | range | [Sample](Sample.md) |
| [BankSkin](BankSkin.md) | [inputs](inputs.md) | range | [Sample](Sample.md) |
| [BankSkin](BankSkin.md) | [outputs](outputs.md) | range | [Sample](Sample.md) |
| [BankMuscle](BankMuscle.md) | [inputs](inputs.md) | range | [Sample](Sample.md) |
| [BankMuscle](BankMuscle.md) | [outputs](outputs.md) | range | [Sample](Sample.md) |
| [BankVessels](BankVessels.md) | [inputs](inputs.md) | range | [Sample](Sample.md) |
| [BankVessels](BankVessels.md) | [outputs](outputs.md) | range | [Sample](Sample.md) |
| [BankSpinalCord](BankSpinalCord.md) | [inputs](inputs.md) | range | [Sample](Sample.md) |
| [BankSpinalCord](BankSpinalCord.md) | [outputs](outputs.md) | range | [Sample](Sample.md) |
| [BlockDura](BlockDura.md) | [outputs](outputs.md) | range | [Sample](Sample.md) |
| [BlockMuscle](BlockMuscle.md) | [outputs](outputs.md) | range | [Sample](Sample.md) |
| [BlockSpinalCord](BlockSpinalCord.md) | [outputs](outputs.md) | range | [Sample](Sample.md) |
| [BlockFrozenBrain](BlockFrozenBrain.md) | [inputs](inputs.md) | range | [Sample](Sample.md) |
| [BlockFrozenBrain](BlockFrozenBrain.md) | [outputs](outputs.md) | range | [Sample](Sample.md) |
| [BlockFixedBrain](BlockFixedBrain.md) | [inputs](inputs.md) | range | [Sample](Sample.md) |
| [BlockFixedBrain](BlockFixedBrain.md) | [outputs](outputs.md) | range | [Sample](Sample.md) |
| [BlockFixedHemisphere](BlockFixedHemisphere.md) | [inputs](inputs.md) | range | [Sample](Sample.md) |
| [BlockFixedHemisphere](BlockFixedHemisphere.md) | [outputs](outputs.md) | range | [Sample](Sample.md) |
| [SectionFixedBrain](SectionFixedBrain.md) | [inputs](inputs.md) | range | [Sample](Sample.md) |
| [SectionFixedBrain](SectionFixedBrain.md) | [outputs](outputs.md) | range | [Sample](Sample.md) |
| [DissectFrozenBrain](DissectFrozenBrain.md) | [outputs](outputs.md) | range | [Sample](Sample.md) |
| [DissectFixedBrain](DissectFixedBrain.md) | [outputs](outputs.md) | range | [Sample](Sample.md) |
| [CultureTissue](CultureTissue.md) | [inputs](inputs.md) | range | [Sample](Sample.md) |
| [CultureTissue](CultureTissue.md) | [outputs](outputs.md) | range | [Sample](Sample.md) |
| [CultureDura](CultureDura.md) | [outputs](outputs.md) | range | [Sample](Sample.md) |
| [CultureSkin](CultureSkin.md) | [outputs](outputs.md) | range | [Sample](Sample.md) |
| [SliceTissueToSlide](SliceTissueToSlide.md) | [inputs](inputs.md) | range | [Sample](Sample.md) |
| [SliceTissueToSlide](SliceTissueToSlide.md) | [outputs](outputs.md) | range | [Sample](Sample.md) |
| [CreateBrainSlide](CreateBrainSlide.md) | [inputs](inputs.md) | range | [Sample](Sample.md) |
| [CreateBrainSlide](CreateBrainSlide.md) | [outputs](outputs.md) | range | [Sample](Sample.md) |
| [CreateSpinalCordSlide](CreateSpinalCordSlide.md) | [outputs](outputs.md) | range | [Sample](Sample.md) |
| [Sample](Sample.md) | [derived_from](derived_from.md) | range | [Sample](Sample.md) |
| [Process](Process.md) | [inputs](inputs.md) | range | [Sample](Sample.md) |
| [Process](Process.md) | [outputs](outputs.md) | range | [Sample](Sample.md) |
| [Assay](Assay.md) | [inputs](inputs.md) | range | [Sample](Sample.md) |
| [SequencingAssay](SequencingAssay.md) | [inputs](inputs.md) | range | [Sample](Sample.md) |
| [RNASeqAssay](RNASeqAssay.md) | [inputs](inputs.md) | range | [Sample](Sample.md) |
| [GenomeSequencingAssay](GenomeSequencingAssay.md) | [inputs](inputs.md) | range | [Sample](Sample.md) |
| [ATACSeqAssay](ATACSeqAssay.md) | [inputs](inputs.md) | range | [Sample](Sample.md) |
| [ArrayAssay](ArrayAssay.md) | [inputs](inputs.md) | range | [Sample](Sample.md) |
| [GenotypingAssay](GenotypingAssay.md) | [inputs](inputs.md) | range | [Sample](Sample.md) |
| [MethylationArrayAssay](MethylationArrayAssay.md) | [inputs](inputs.md) | range | [Sample](Sample.md) |
| [ImagingAssay](ImagingAssay.md) | [inputs](inputs.md) | range | [Sample](Sample.md) |
| [Assessment](Assessment.md) | [sample](sample.md) | range | [Sample](Sample.md) |
| [Measurement](Measurement.md) | [sample](sample.md) | range | [Sample](Sample.md) |
| [Diagnosis](Diagnosis.md) | [sample](sample.md) | range | [Sample](Sample.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:Sample |
| native | brainbank:Sample |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: Sample
description: An abstract physical specimen obtained from a donor. Concrete subclasses
  are SolidSample and LiquidSample; brain-bank material types (CNSSection, CSF, Blood,
  …) extend those in the brainbank extension layer.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: NamedThing
abstract: true
attributes:
  sample_id:
    name: sample_id
    description: Business identifier (human-facing sample/specimen ID).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    domain_of:
    - Sample
    required: true
  donor:
    name: donor
    description: The deceased donor this sample was taken from.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
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
    domain_of:
    - Sample
    range: AnatomicalStructure
    multivalued: true
  container:
    name: container
    description: The storage container currently holding this sample.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    domain_of:
    - Sample
    range: Container
  derived_from:
    name: derived_from
    description: Parent specimen this sample was produced from.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    domain_of:
    - Sample
    range: Sample
  produced_by:
    name: produced_by
    description: The processing event that created this sample.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    domain_of:
    - Sample
    - Dataset
    range: Process

```
</details>

### Induced

<details>
```yaml
name: Sample
description: An abstract physical specimen obtained from a donor. Concrete subclasses
  are SolidSample and LiquidSample; brain-bank material types (CNSSection, CSF, Blood,
  …) extend those in the brainbank extension layer.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: NamedThing
abstract: true
attributes:
  sample_id:
    name: sample_id
    description: Business identifier (human-facing sample/specimen ID).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: Sample
    domain_of:
    - Sample
    range: string
    required: true
  donor:
    name: donor
    description: The deceased donor this sample was taken from.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    owner: Sample
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
    owner: Sample
    domain_of:
    - Sample
    range: AnatomicalStructure
    multivalued: true
  container:
    name: container
    description: The storage container currently holding this sample.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: Sample
    domain_of:
    - Sample
    range: Container
  derived_from:
    name: derived_from
    description: Parent specimen this sample was produced from.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: Sample
    domain_of:
    - Sample
    range: Sample
  produced_by:
    name: produced_by
    description: The processing event that created this sample.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: Sample
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
    owner: Sample
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: Sample
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: Sample
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
    owner: Sample
    domain_of:
    - NamedThing
    range: string

```
</details></div>