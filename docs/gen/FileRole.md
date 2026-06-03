---
search:
  boost: 2.0
---


# Enum: FileRole 




_The role a file or file-set plays within a dataset._



<div data-search-exclude markdown="1">

URI: [brainbank:FileRole](https://w3id.org/VA-NCPTSDBB/brainbank/FileRole)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| reads | None | Raw or processed sequencing reads (e |
| alignment | None | Aligned reads (e |
| index | None | An index file accompanying another file (e |
| variants | None | Variant calls (e |
| counts | None | Feature count or expression matrix (e |
| qc | None | Quality-control metrics or reports |
| log | None | Pipeline run log file |
| report | None | Summary report (e |
| reference | None | Reference genome, annotation, or index file |
| other | None | A file role not enumerated above |




## Slots

| Name | Description |
| ---  | --- |
| [role](role.md) | What this set of files represents within the dataset |










## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank






## LinkML Source

<details>
```yaml
name: FileRole
description: The role a file or file-set plays within a dataset.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
permissible_values:
  reads:
    text: reads
    description: Raw or processed sequencing reads (e.g. FASTQ files).
  alignment:
    text: alignment
    description: Aligned reads (e.g. BAM or CRAM files).
  index:
    text: index
    description: An index file accompanying another file (e.g. .bai for a BAM).
  variants:
    text: variants
    description: Variant calls (e.g. VCF/BCF files).
  counts:
    text: counts
    description: Feature count or expression matrix (e.g. gene counts TSV, H5AD).
  qc:
    text: qc
    description: Quality-control metrics or reports.
  log:
    text: log
    description: Pipeline run log file.
  report:
    text: report
    description: Summary report (e.g. MultiQC HTML report).
  reference:
    text: reference
    description: Reference genome, annotation, or index file.
  other:
    text: other
    description: A file role not enumerated above.

```
</details>

</div>