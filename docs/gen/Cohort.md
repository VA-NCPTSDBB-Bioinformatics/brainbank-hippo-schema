---
search:
  boost: 10.0
---

# Class: Cohort 


_A named study group or research cohort to which donors may be assigned._



<div data-search-exclude markdown="1">



URI: [brainbank:Cohort](https://w3id.org/VA-NCPTSDBB/brainbank/Cohort)





```mermaid
 classDiagram
    class Cohort
    click Cohort href "../Cohort/"
      NamedThing <|-- Cohort
        click NamedThing href "../NamedThing/"
      
      Cohort : category
        
      Cohort : description
        
      Cohort : id
        
      Cohort : name
        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * **Cohort**


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [id](id.md) | 1 <br/> [Uriorcurie](Uriorcurie.md) | Technical identifier (UUID/CURIE); becomes hippo-managed later | [NamedThing](NamedThing.md) |
| [name](name.md) | 1 <br/> [String](String.md) | Human-readable label for the entity | [NamedThing](NamedThing.md) |
| [description](description.md) | 0..1 <br/> [String](String.md) | Free-text narrative description of the entity | [NamedThing](NamedThing.md) |
| [category](category.md) | 0..1 <br/> [String](String.md) | Names the concrete class of this instance | [NamedThing](NamedThing.md) |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [BrainBank](BrainBank.md) | [cohorts](cohorts.md) | range | [Cohort](Cohort.md) |
| [Person](Person.md) | [cohort](cohort.md) | range | [Cohort](Cohort.md) |
| [Donor](Donor.md) | [cohort](cohort.md) | range | [Cohort](Cohort.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:Cohort |
| native | brainbank:Cohort |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: Cohort
description: A named study group or research cohort to which donors may be assigned.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: NamedThing

```
</details>

### Induced

<details>
```yaml
name: Cohort
description: A named study group or research cohort to which donors may be assigned.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: NamedThing
attributes:
  id:
    name: id
    description: Technical identifier (UUID/CURIE); becomes hippo-managed later.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    identifier: true
    owner: Cohort
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: Cohort
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: Cohort
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
    owner: Cohort
    domain_of:
    - NamedThing
    range: string

```
</details></div>