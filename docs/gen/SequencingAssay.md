---
search:
  boost: 10.0
---

# Class: SequencingAssay 


_Abstract base for next-generation sequencing assays._



<div data-search-exclude markdown="1">


* __NOTE__: this is an abstract class and should not be instantiated directly


URI: [brainbank:SequencingAssay](https://w3id.org/VA-NCPTSDBB/brainbank/SequencingAssay)





```mermaid
 classDiagram
    class SequencingAssay
    click SequencingAssay href "../SequencingAssay/"
      Assay <|-- SequencingAssay
        click Assay href "../Assay/"
      

      SequencingAssay <|-- RNASeqAssay
        click RNASeqAssay href "../RNASeqAssay/"
      SequencingAssay <|-- GenomeSequencingAssay
        click GenomeSequencingAssay href "../GenomeSequencingAssay/"
      SequencingAssay <|-- ATACSeqAssay
        click ATACSeqAssay href "../ATACSeqAssay/"
      

      SequencingAssay : assay_type
        
          
    
        
        
        SequencingAssay --> "0..1" AssayType : assay_type
        click AssayType href "../AssayType/"
    

        
      SequencingAssay : category
        
      SequencingAssay : description
        
      SequencingAssay : id
        
      SequencingAssay : inputs
        
          
    
        
        
        SequencingAssay --> "*" Sample : inputs
        click Sample href "../Sample/"
    

        
      SequencingAssay : name
        
      SequencingAssay : paired_end
        
      SequencingAssay : performed_on
        
      SequencingAssay : platform
        
          
    
        
        
        SequencingAssay --> "0..1" SequencingPlatform : platform
        click SequencingPlatform href "../SequencingPlatform/"
    

        
      SequencingAssay : protocol
        
          
    
        
        
        SequencingAssay --> "0..1 _recommended_" Protocol : protocol
        click Protocol href "../Protocol/"
    

        
      SequencingAssay : read_length
        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Activity](Activity.md)
        * [Assay](Assay.md)
            * **SequencingAssay**
                * [RNASeqAssay](RNASeqAssay.md)
                * [GenomeSequencingAssay](GenomeSequencingAssay.md)
                * [ATACSeqAssay](ATACSeqAssay.md)


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [platform](platform.md) | 0..1 <br/> [SequencingPlatform](SequencingPlatform.md) | Sequencing instrument platform used (e | direct |
| [read_length](read_length.md) | 0..1 <br/> [Integer](Integer.md) | Read length in base pairs (for paired-end reads, the per-read length) | direct |
| [paired_end](paired_end.md) | 0..1 <br/> [Boolean](Boolean.md) | Whether this assay used paired-end sequencing (true) or single-end (false) | direct |
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
| self | brainbank:SequencingAssay |
| native | brainbank:SequencingAssay |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: SequencingAssay
description: Abstract base for next-generation sequencing assays.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Assay
abstract: true
attributes:
  platform:
    name: platform
    description: Sequencing instrument platform used (e.g. Illumina, PacBio).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    domain_of:
    - SequencingAssay
    range: SequencingPlatform
  read_length:
    name: read_length
    description: Read length in base pairs (for paired-end reads, the per-read length).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    domain_of:
    - SequencingAssay
    range: integer
  paired_end:
    name: paired_end
    description: Whether this assay used paired-end sequencing (true) or single-end
      (false).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    domain_of:
    - SequencingAssay
    range: boolean

```
</details>

### Induced

<details>
```yaml
name: SequencingAssay
description: Abstract base for next-generation sequencing assays.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Assay
abstract: true
attributes:
  platform:
    name: platform
    description: Sequencing instrument platform used (e.g. Illumina, PacBio).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: SequencingAssay
    domain_of:
    - SequencingAssay
    range: SequencingPlatform
  read_length:
    name: read_length
    description: Read length in base pairs (for paired-end reads, the per-read length).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: SequencingAssay
    domain_of:
    - SequencingAssay
    range: integer
  paired_end:
    name: paired_end
    description: Whether this assay used paired-end sequencing (true) or single-end
      (false).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: SequencingAssay
    domain_of:
    - SequencingAssay
    range: boolean
  assay_type:
    name: assay_type
    description: OBI-controlled type of assay performed.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    owner: SequencingAssay
    domain_of:
    - Dataset
    - Assay
    range: AssayType
  inputs:
    name: inputs
    description: Source samples consumed by this assay.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    owner: SequencingAssay
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
    owner: SequencingAssay
    domain_of:
    - Activity
    range: Protocol
    recommended: true
  performed_on:
    name: performed_on
    description: Date the activity was carried out.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: SequencingAssay
    domain_of:
    - Activity
    range: date
  id:
    name: id
    description: Technical identifier (UUID/CURIE); becomes hippo-managed later.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    identifier: true
    owner: SequencingAssay
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: SequencingAssay
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: SequencingAssay
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
    owner: SequencingAssay
    domain_of:
    - NamedThing
    range: string

```
</details></div>