---
search:
  boost: 10.0
---

# Class: BankCSF 


_Bank cerebrospinal fluid: aliquot into frozen aliquots, centrifuge to recover a cell pellet, and retain residual stock._



<div data-search-exclude markdown="1">



URI: [brainbank:BankCSF](https://w3id.org/VA-NCPTSDBB/brainbank/BankCSF)





```mermaid
 classDiagram
    class BankCSF
    click BankCSF href "../BankCSF/"
      Process <|-- BankCSF
        click Process href "../Process/"
      
      BankCSF : category
        
      BankCSF : description
        
      BankCSF : frozen_csf
        
          
    
        
        
        BankCSF --> "1..*" CSF : frozen_csf
        click CSF href "../CSF/"
    

        
      BankCSF : id
        
      BankCSF : inputs
        
          
    
        
        
        BankCSF --> "*" Sample : inputs
        click Sample href "../Sample/"
    

        
      BankCSF : name
        
      BankCSF : outputs
        
          
    
        
        
        BankCSF --> "*" Sample : outputs
        click Sample href "../Sample/"
    

        
      BankCSF : pellet
        
          
    
        
        
        BankCSF --> "1" CSFPellet : pellet
        click CSFPellet href "../CSFPellet/"
    

        
      BankCSF : performed_on
        
      BankCSF : protocol
        
          
    
        
        
        BankCSF --> "0..1 _recommended_" Protocol : protocol
        click Protocol href "../Protocol/"
    

        
      BankCSF : residual_stock
        
          
    
        
        
        BankCSF --> "0..1" CSF : residual_stock
        click CSF href "../CSF/"
    

        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Activity](Activity.md)
        * [Process](Process.md)
            * **BankCSF**


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [frozen_csf](frozen_csf.md) | 1..* <br/> [CSF](CSF.md) | CSF aliquots snap-frozen for storage | direct |
| [pellet](pellet.md) | 1 <br/> [CSFPellet](CSFPellet.md) | Cell pellet recovered by centrifugation of the CSF | direct |
| [residual_stock](residual_stock.md) | 0..1 <br/> [CSF](CSF.md) | Residual CSF stock after aliquoting | direct |
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
| self | brainbank:BankCSF |
| native | brainbank:BankCSF |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: BankCSF
description: 'Bank cerebrospinal fluid: aliquot into frozen aliquots, centrifuge to
  recover a cell pellet, and retain residual stock.'
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Process
attributes:
  frozen_csf:
    name: frozen_csf
    description: CSF aliquots snap-frozen for storage.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    domain_of:
    - BankCSF
    range: CSF
    required: true
    multivalued: true
  pellet:
    name: pellet
    description: Cell pellet recovered by centrifugation of the CSF.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    domain_of:
    - BankCSF
    range: CSFPellet
    required: true
  residual_stock:
    name: residual_stock
    description: Residual CSF stock after aliquoting.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    domain_of:
    - BankCSF
    - BankBlood
    range: CSF

```
</details>

### Induced

<details>
```yaml
name: BankCSF
description: 'Bank cerebrospinal fluid: aliquot into frozen aliquots, centrifuge to
  recover a cell pellet, and retain residual stock.'
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Process
attributes:
  frozen_csf:
    name: frozen_csf
    description: CSF aliquots snap-frozen for storage.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    owner: BankCSF
    domain_of:
    - BankCSF
    range: CSF
    required: true
    multivalued: true
  pellet:
    name: pellet
    description: Cell pellet recovered by centrifugation of the CSF.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    owner: BankCSF
    domain_of:
    - BankCSF
    range: CSFPellet
    required: true
  residual_stock:
    name: residual_stock
    description: Residual CSF stock after aliquoting.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
    rank: 1000
    owner: BankCSF
    domain_of:
    - BankCSF
    - BankBlood
    range: CSF
  inputs:
    name: inputs
    description: Input specimens consumed or transformed by this process.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/tissue
    rank: 1000
    owner: BankCSF
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
    owner: BankCSF
    domain_of:
    - Process
    range: Sample
    multivalued: true
  protocol:
    name: protocol
    description: The SOP/method this activity followed.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BankCSF
    domain_of:
    - Activity
    range: Protocol
    recommended: true
  performed_on:
    name: performed_on
    description: Date the activity was carried out.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BankCSF
    domain_of:
    - Activity
    range: date
  id:
    name: id
    description: Technical identifier (UUID/CURIE); becomes hippo-managed later.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    identifier: true
    owner: BankCSF
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BankCSF
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: BankCSF
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
    owner: BankCSF
    domain_of:
    - NamedThing
    range: string

```
</details></div>