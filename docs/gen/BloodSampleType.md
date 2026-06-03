---
search:
  boost: 2.0
---


# Enum: BloodSampleType 




_Fractions of blood collected from donors for biobanking._



<div data-search-exclude markdown="1">

URI: [brainbank:BloodSampleType](https://w3id.org/VA-NCPTSDBB/brainbank/BloodSampleType)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| serum | None | Blood serum; the liquid fraction remaining after clotting (acellular, clottin... |
| plasma | None | Blood plasma; the liquid fraction with anticoagulant (acellular, clotting fac... |




## Slots

| Name | Description |
| ---  | --- |
| [blood_sample_type](blood_sample_type.md) | Type of blood fraction collected (serum or plasma) |










## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank






## LinkML Source

<details>
```yaml
name: BloodSampleType
description: Fractions of blood collected from donors for biobanking.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
permissible_values:
  serum:
    text: serum
    description: Blood serum; the liquid fraction remaining after clotting (acellular,
      clotting factors removed).
  plasma:
    text: plasma
    description: Blood plasma; the liquid fraction with anticoagulant (acellular,
      clotting factors retained).

```
</details>

</div>