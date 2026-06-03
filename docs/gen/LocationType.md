---
search:
  boost: 2.0
---


# Enum: LocationType 




_Hierarchical categories of physical storage locations._



<div data-search-exclude markdown="1">

URI: [brainbank:LocationType](https://w3id.org/VA-NCPTSDBB/brainbank/LocationType)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| Site | None | A top-level physical site or facility (e |
| Building | None | A building within a site |
| Room | None | A room within a building |




## Slots

| Name | Description |
| ---  | --- |
| [location_type](location_type.md) | Type of location (Site, Building, or Room) |










## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank






## LinkML Source

<details>
```yaml
name: LocationType
description: Hierarchical categories of physical storage locations.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
permissible_values:
  Site:
    text: Site
    description: A top-level physical site or facility (e.g. a VA medical center campus).
  Building:
    text: Building
    description: A building within a site.
  Room:
    text: Room
    description: A room within a building.

```
</details>

</div>