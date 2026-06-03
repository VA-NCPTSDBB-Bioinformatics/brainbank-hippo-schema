---
search:
  boost: 10.0
---

# Class: RNASeqAssay 


_An RNA sequencing assay (bulk or single-nucleus RNA-seq)._



<div data-search-exclude markdown="1">



URI: [brainbank:RNASeqAssay](https://w3id.org/VA-NCPTSDBB/brainbank/RNASeqAssay)





```mermaid
 classDiagram
    class RNASeqAssay
    click RNASeqAssay href "../RNASeqAssay/"
      SequencingAssay <|-- RNASeqAssay
        click SequencingAssay href "../SequencingAssay/"
      
      RNASeqAssay : assay_type
        
          
    
        
        
        RNASeqAssay --> "0..1" AssayType : assay_type
        click AssayType href "../AssayType/"
    

        
      RNASeqAssay : category
        
      RNASeqAssay : description
        
      RNASeqAssay : id
        
      RNASeqAssay : inputs
        
          
    
        
        
        RNASeqAssay --> "*" Sample : inputs
        click Sample href "../Sample/"
    

        
      RNASeqAssay : name
        
      RNASeqAssay : paired_end
        
      RNASeqAssay : performed_on
        
      RNASeqAssay : platform
        
          
    
        
        
        RNASeqAssay --> "0..1" SequencingPlatform : platform
        click SequencingPlatform href "../SequencingPlatform/"
    

        
      RNASeqAssay : protocol
        
          
    
        
        
        RNASeqAssay --> "0..1 _recommended_" Protocol : protocol
        click Protocol href "../Protocol/"
    

        
      RNASeqAssay : read_length
        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Activity](Activity.md)
        * [Assay](Assay.md)
            * [SequencingAssay](SequencingAssay.md)
                * **RNASeqAssay**


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [platform](platform.md) | 0..1 <br/> [SequencingPlatform](SequencingPlatform.md) | Sequencing instrument platform used (e | [SequencingAssay](SequencingAssay.md) |
| [read_length](read_length.md) | 0..1 <br/> [Integer](Integer.md) | Read length in base pairs (for paired-end reads, the per-read length) | [SequencingAssay](SequencingAssay.md) |
| [paired_end](paired_end.md) | 0..1 <br/> [Boolean](Boolean.md) | Whether this assay used paired-end sequencing (true) or single-end (false) | [SequencingAssay](SequencingAssay.md) |
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
| self | brainbank:RNASeqAssay |
| native | brainbank:RNASeqAssay |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: RNASeqAssay
description: An RNA sequencing assay (bulk or single-nucleus RNA-seq).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: SequencingAssay

```
</details>

### Induced

<details>
```yaml
name: RNASeqAssay
description: An RNA sequencing assay (bulk or single-nucleus RNA-seq).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: SequencingAssay
attributes:
  platform:
    name: platform
    description: Sequencing instrument platform used (e.g. Illumina, PacBio).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: RNASeqAssay
    domain_of:
    - SequencingAssay
    range: SequencingPlatform
  read_length:
    name: read_length
    description: Read length in base pairs (for paired-end reads, the per-read length).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: RNASeqAssay
    domain_of:
    - SequencingAssay
    range: integer
  paired_end:
    name: paired_end
    description: Whether this assay used paired-end sequencing (true) or single-end
      (false).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: RNASeqAssay
    domain_of:
    - SequencingAssay
    range: boolean
  assay_type:
    name: assay_type
    description: OBI-controlled type of assay performed.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    owner: RNASeqAssay
    domain_of:
    - Dataset
    - Assay
    range: AssayType
  inputs:
    name: inputs
    description: Source samples consumed by this assay.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    owner: RNASeqAssay
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
    owner: RNASeqAssay
    domain_of:
    - Activity
    range: Protocol
    recommended: true
  performed_on:
    name: performed_on
    description: Date the activity was carried out.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: RNASeqAssay
    domain_of:
    - Activity
    range: date
  id:
    name: id
    description: Technical identifier (UUID/CURIE); becomes hippo-managed later.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    identifier: true
    owner: RNASeqAssay
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: RNASeqAssay
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: RNASeqAssay
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
    owner: RNASeqAssay
    domain_of:
    - NamedThing
    range: string

```
</details></div>