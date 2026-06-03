---
search:
  boost: 2.0
---


# Enum: AnalysisStatus 




_Execution status of a computational analysis run._



<div data-search-exclude markdown="1">

URI: [brainbank:AnalysisStatus](https://w3id.org/VA-NCPTSDBB/brainbank/AnalysisStatus)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| completed | None | The analysis finished successfully and all outputs are available |
| failed | None | The analysis terminated with an error; outputs may be incomplete |
| running | None | The analysis is currently executing |
| queued | None | The analysis has been submitted but has not yet started executing |




## Slots

| Name | Description |
| ---  | --- |
| [status](status.md) | Execution status of this analysis run |










## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank






## LinkML Source

<details>
```yaml
name: AnalysisStatus
description: Execution status of a computational analysis run.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
permissible_values:
  completed:
    text: completed
    description: The analysis finished successfully and all outputs are available.
  failed:
    text: failed
    description: The analysis terminated with an error; outputs may be incomplete.
  running:
    text: running
    description: The analysis is currently executing.
  queued:
    text: queued
    description: The analysis has been submitted but has not yet started executing.

```
</details>

</div>