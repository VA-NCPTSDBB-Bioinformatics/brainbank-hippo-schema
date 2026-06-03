---
search:
  boost: 10.0
---

# Class: Volume 


_A volume measurement (e.g. aliquot volume)._



<div data-search-exclude markdown="1">



URI: [brainbank:Volume](https://w3id.org/VA-NCPTSDBB/brainbank/Volume)





```mermaid
 classDiagram
    class Volume
    click Volume href "../Volume/"
      Quantity <|-- Volume
        click Quantity href "../Quantity/"
      
      Volume : unit
        
          
    
        
        
        Volume --> "0..1" VolumeUnit : unit
        click VolumeUnit href "../VolumeUnit/"
    

        
      Volume : value
        
      
```





## Inheritance
* [Quantity](Quantity.md)
    * **Volume**


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [unit](unit.md) | 0..1 <br/> [VolumeUnit](VolumeUnit.md) | Unit of volume for this measurement | direct |
| [value](value.md) | 0..1 <br/> [Float](Float.md) | Numeric magnitude of the measurement | [Quantity](Quantity.md) |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [CSF](CSF.md) | [volume](volume.md) | range | [Volume](Volume.md) |
| [Blood](Blood.md) | [volume](volume.md) | range | [Volume](Volume.md) |
| [Cells](Cells.md) | [volume](volume.md) | range | [Volume](Volume.md) |
| [RNA](RNA.md) | [volume](volume.md) | range | [Volume](Volume.md) |
| [DNA](DNA.md) | [volume](volume.md) | range | [Volume](Volume.md) |
| [LiquidSample](LiquidSample.md) | [volume](volume.md) | range | [Volume](Volume.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:Volume |
| native | brainbank:Volume |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: Volume
description: A volume measurement (e.g. aliquot volume).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Quantity
attributes:
  unit:
    name: unit
    description: Unit of volume for this measurement.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    domain_of:
    - Mass
    - Volume
    - Concentration
    range: VolumeUnit

```
</details>

### Induced

<details>
```yaml
name: Volume
description: A volume measurement (e.g. aliquot volume).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Quantity
attributes:
  unit:
    name: unit
    description: Unit of volume for this measurement.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    owner: Volume
    domain_of:
    - Mass
    - Volume
    - Concentration
    range: VolumeUnit
  value:
    name: value
    description: Numeric magnitude of the measurement.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: Volume
    domain_of:
    - Quantity
    - Parameter
    range: float

```
</details></div>