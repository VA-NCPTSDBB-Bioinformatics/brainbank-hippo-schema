---
search:
  boost: 10.0
---

# Class: Diagnosis 


_A disease diagnosis recorded for a donor. PROVISIONAL._



<div data-search-exclude markdown="1">



URI: [brainbank:Diagnosis](https://w3id.org/VA-NCPTSDBB/brainbank/Diagnosis)





```mermaid
 classDiagram
    class Diagnosis
    click Diagnosis href "../Diagnosis/"
      Assessment <|-- Diagnosis
        click Assessment href "../Assessment/"
      
      Diagnosis : asserted_on
        
      Diagnosis : category
        
      Diagnosis : description
        
      Diagnosis : disease
        
          
    
        
        
        Diagnosis --> "1" Disease : disease
        click Disease href "../Disease/"
    

        
      Diagnosis : id
        
      Diagnosis : method
        
      Diagnosis : name
        
      Diagnosis : person
        
          
    
        
        
        Diagnosis --> "0..1" Person : person
        click Person href "../Person/"
    

        
      Diagnosis : sample
        
          
    
        
        
        Diagnosis --> "0..1" Sample : sample
        click Sample href "../Sample/"
    

        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Assessment](Assessment.md)
        * **Diagnosis**


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [disease](disease.md) | 1 <br/> [Disease](Disease.md) | The MONDO disease term for this diagnosis | direct |
| [person](person.md) | 0..1 <br/> [Person](Person.md) | The person (donor) this assessment is about, if applicable | [Assessment](Assessment.md) |
| [sample](sample.md) | 0..1 <br/> [Sample](Sample.md) | The tissue sample this assessment is about, if applicable | [Assessment](Assessment.md) |
| [method](method.md) | 0..1 <br/> [String](String.md) | Method or protocol used to perform this assessment | [Assessment](Assessment.md) |
| [asserted_on](asserted_on.md) | 0..1 <br/> [Date](Date.md) | Date on which this assessment was made or recorded | [Assessment](Assessment.md) |
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
| self | brainbank:Diagnosis |
| native | brainbank:Diagnosis |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: Diagnosis
description: A disease diagnosis recorded for a donor. PROVISIONAL.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Assessment
attributes:
  disease:
    name: disease
    description: The MONDO disease term for this diagnosis.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/pathology
    rank: 1000
    domain_of:
    - Diagnosis
    range: Disease
    required: true

```
</details>

### Induced

<details>
```yaml
name: Diagnosis
description: A disease diagnosis recorded for a donor. PROVISIONAL.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Assessment
attributes:
  disease:
    name: disease
    description: The MONDO disease term for this diagnosis.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/pathology
    rank: 1000
    owner: Diagnosis
    domain_of:
    - Diagnosis
    range: Disease
    required: true
  person:
    name: person
    description: The person (donor) this assessment is about, if applicable.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/pathology
    rank: 1000
    owner: Diagnosis
    domain_of:
    - Assessment
    range: Person
  sample:
    name: sample
    description: The tissue sample this assessment is about, if applicable.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/pathology
    rank: 1000
    owner: Diagnosis
    domain_of:
    - Assessment
    range: Sample
  method:
    name: method
    description: Method or protocol used to perform this assessment.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/pathology
    owner: Diagnosis
    domain_of:
    - Association
    - Assessment
    range: string
  asserted_on:
    name: asserted_on
    description: Date on which this assessment was made or recorded.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/pathology
    owner: Diagnosis
    domain_of:
    - Association
    - Assessment
    range: date
  id:
    name: id
    description: Technical identifier (UUID/CURIE); becomes hippo-managed later.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    identifier: true
    owner: Diagnosis
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: Diagnosis
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: Diagnosis
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
    owner: Diagnosis
    domain_of:
    - NamedThing
    range: string

```
</details></div>