---
search:
  boost: 10.0
---

# Class: Measurement 


_A generic neuropathology measure. PROVISIONAL. When scope is known, `measure_name` is intended to be constrained by the MeasureType enum below (populated then), with staged scales recorded as values rather than as typed subclasses._



<div data-search-exclude markdown="1">



URI: [brainbank:Measurement](https://w3id.org/VA-NCPTSDBB/brainbank/Measurement)





```mermaid
 classDiagram
    class Measurement
    click Measurement href "../Measurement/"
      Assessment <|-- Measurement
        click Assessment href "../Assessment/"
      
      Measurement : asserted_on
        
      Measurement : category
        
      Measurement : description
        
      Measurement : id
        
      Measurement : measure_name
        
          
    
        
        
        Measurement --> "1" MeasureType : measure_name
        click MeasureType href "../MeasureType/"
    

        
      Measurement : method
        
      Measurement : name
        
      Measurement : person
        
          
    
        
        
        Measurement --> "0..1" Person : person
        click Person href "../Person/"
    

        
      Measurement : sample
        
          
    
        
        
        Measurement --> "0..1" Sample : sample
        click Sample href "../Sample/"
    

        
      Measurement : value_numeric
        
      Measurement : value_text
        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Assessment](Assessment.md)
        * **Measurement**


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [measure_name](measure_name.md) | 1 <br/> [MeasureType](MeasureType.md) | The neuropathology staging scale or measure being recorded (e | direct |
| [value_numeric](value_numeric.md) | 0..1 <br/> [Float](Float.md) | Numeric value of the measurement (e | direct |
| [value_text](value_text.md) | 0..1 <br/> [String](String.md) | Text value of the measurement, for categorical or free-text scores | direct |
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
| self | brainbank:Measurement |
| native | brainbank:Measurement |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: Measurement
description: A generic neuropathology measure. PROVISIONAL. When scope is known, `measure_name`
  is intended to be constrained by the MeasureType enum below (populated then), with
  staged scales recorded as values rather than as typed subclasses.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Assessment
attributes:
  measure_name:
    name: measure_name
    description: The neuropathology staging scale or measure being recorded (e.g.
      Braak NFT stage).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/pathology
    rank: 1000
    domain_of:
    - Measurement
    range: MeasureType
    required: true
  value_numeric:
    name: value_numeric
    description: Numeric value of the measurement (e.g. a Braak stage integer or continuous
      score).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/pathology
    rank: 1000
    domain_of:
    - Measurement
    range: float
  value_text:
    name: value_text
    description: Text value of the measurement, for categorical or free-text scores.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/pathology
    rank: 1000
    domain_of:
    - Measurement

```
</details>

### Induced

<details>
```yaml
name: Measurement
description: A generic neuropathology measure. PROVISIONAL. When scope is known, `measure_name`
  is intended to be constrained by the MeasureType enum below (populated then), with
  staged scales recorded as values rather than as typed subclasses.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Assessment
attributes:
  measure_name:
    name: measure_name
    description: The neuropathology staging scale or measure being recorded (e.g.
      Braak NFT stage).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/pathology
    rank: 1000
    owner: Measurement
    domain_of:
    - Measurement
    range: MeasureType
    required: true
  value_numeric:
    name: value_numeric
    description: Numeric value of the measurement (e.g. a Braak stage integer or continuous
      score).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/pathology
    rank: 1000
    owner: Measurement
    domain_of:
    - Measurement
    range: float
  value_text:
    name: value_text
    description: Text value of the measurement, for categorical or free-text scores.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/pathology
    rank: 1000
    owner: Measurement
    domain_of:
    - Measurement
    range: string
  person:
    name: person
    description: The person (donor) this assessment is about, if applicable.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/pathology
    rank: 1000
    owner: Measurement
    domain_of:
    - Assessment
    range: Person
  sample:
    name: sample
    description: The tissue sample this assessment is about, if applicable.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/pathology
    rank: 1000
    owner: Measurement
    domain_of:
    - Assessment
    range: Sample
  method:
    name: method
    description: Method or protocol used to perform this assessment.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/pathology
    owner: Measurement
    domain_of:
    - Association
    - Assessment
    range: string
  asserted_on:
    name: asserted_on
    description: Date on which this assessment was made or recorded.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/pathology
    owner: Measurement
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
    owner: Measurement
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: Measurement
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: Measurement
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
    owner: Measurement
    domain_of:
    - NamedThing
    range: string

```
</details></div>