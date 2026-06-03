---
search:
  boost: 10.0
---

# Class: BankBlood 


_Bank a blood specimen: separate into typed aliquots (serum or plasma) and retain residual stock._



<div data-search-exclude markdown="1">



URI: [brainbank:BankBlood](https://w3id.org/VA-NCPTSDBB/brainbank/BankBlood)





```mermaid
 classDiagram
    class BankBlood
    click BankBlood href "../BankBlood/"
      Process <|-- BankBlood
        click Process href "../Process/"
      
      BankBlood : blood_sample
        
          
    
        
        
        BankBlood --> "1..*" Blood : blood_sample
        click Blood href "../Blood/"
    

        
      BankBlood : blood_sample_type
        
          
    
        
        
        BankBlood --> "0..1" BloodSampleType : blood_sample_type
        click BloodSampleType href "../BloodSampleType/"
    

        
      BankBlood : category
        
      BankBlood : description
        
      BankBlood : id
        
      BankBlood : inputs
        
          
    
        
        
        BankBlood --> "*" Sample : inputs
        click Sample href "../Sample/"
    

        
      BankBlood : name
        
      BankBlood : outputs
        
          
    
        
        
        BankBlood --> "*" Sample : outputs
        click Sample href "../Sample/"
    

        
      BankBlood : performed_on
        
      BankBlood : protocol
        
          
    
        
        
        BankBlood --> "0..1 _recommended_" Protocol : protocol
        click Protocol href "../Protocol/"
    

        
      BankBlood : residual_stock
        
          
    
        
        
        BankBlood --> "0..1" Blood : residual_stock
        click Blood href "../Blood/"
    

        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Activity](Activity.md)
        * [Process](Process.md)
            * **BankBlood**


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [blood_sample_type](blood_sample_type.md) | 0..1 <br/> [BloodSampleType](BloodSampleType.md) | Type of blood fraction collected (serum or plasma) | direct |
| [blood_sample](blood_sample.md) | 1..* <br/> [Blood](Blood.md) | Blood aliquots collected and banked | direct |
| [residual_stock](residual_stock.md) | 0..1 <br/> [Blood](Blood.md) | Residual blood stock after aliquoting | direct |
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
| self | brainbank:BankBlood |
| native | brainbank:BankBlood |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: BankBlood
description: 'Bank a blood specimen: separate into typed aliquots (serum or plasma)
  and retain residual stock.'
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Process
attributes:
  blood_sample_type:
    name: blood_sample_type
    description: Type of blood fraction collected (serum or plasma).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    domain_of:
    - BankBlood
    range: BloodSampleType
  blood_sample:
    name: blood_sample
    description: Blood aliquots collected and banked.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    domain_of:
    - BankBlood
    range: Blood
    required: true
    multivalued: true
  residual_stock:
    name: residual_stock
    description: Residual blood stock after aliquoting.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    domain_of:
    - BankCSF
    - BankBlood
    range: Blood

```
</details>

### Induced

<details>
```yaml
name: BankBlood
description: 'Bank a blood specimen: separate into typed aliquots (serum or plasma)
  and retain residual stock.'
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Process
attributes:
  blood_sample_type:
    name: blood_sample_type
    description: Type of blood fraction collected (serum or plasma).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    owner: BankBlood
    domain_of:
    - BankBlood
    range: BloodSampleType
  blood_sample:
    name: blood_sample
    description: Blood aliquots collected and banked.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    owner: BankBlood
    domain_of:
    - BankBlood
    range: Blood
    required: true
    multivalued: true
  residual_stock:
    name: residual_stock
    description: Residual blood stock after aliquoting.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    owner: BankBlood
    domain_of:
    - BankCSF
    - BankBlood
    range: Blood
  inputs:
    name: inputs
    description: Input specimens consumed or transformed by this process.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: BankBlood
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
    owner: BankBlood
    domain_of:
    - Process
    range: Sample
    multivalued: true
  protocol:
    name: protocol
    description: The SOP/method this activity followed.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BankBlood
    domain_of:
    - Activity
    range: Protocol
    recommended: true
  performed_on:
    name: performed_on
    description: Date the activity was carried out.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BankBlood
    domain_of:
    - Activity
    range: date
  id:
    name: id
    description: Technical identifier (UUID/CURIE); becomes hippo-managed later.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    identifier: true
    owner: BankBlood
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BankBlood
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BankBlood
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
    owner: BankBlood
    domain_of:
    - NamedThing
    range: string

```
</details></div>