---
search:
  boost: 2.0
---


# Enum: FileFormat 




_Common bioinformatics file formats. First-cut enumeration — extend as needed._



<div data-search-exclude markdown="1">

URI: [brainbank:FileFormat](https://w3id.org/VA-NCPTSDBB/brainbank/FileFormat)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| FASTQ | EDAM:format_1930 | Raw sequencing reads with per-base quality scores (FASTQ format) |
| BAM | EDAM:format_2572 | Binary Alignment Map; compressed binary form of SAM |
| CRAM | EDAM:format_3462 | Reference-compressed sequence alignment format; more compact than BAM |
| SAM | EDAM:format_2573 | Sequence Alignment/Map text format |
| VCF | EDAM:format_3016 | Variant Call Format; stores SNPs, indels, and structural variants |
| BCF | EDAM:format_3020 | Binary Variant Call Format; compressed binary equivalent of VCF |
| BED | EDAM:format_3003 | Browser Extensible Data; tab-delimited genomic interval format |
| GFF | EDAM:format_2305 | General Feature Format; generic genomic annotation format |
| GTF | EDAM:format_2306 | Gene Transfer Format (GFF version 2 extended); gene annotation format |
| TSV | EDAM:format_3475 | Tab-separated values text file |
| CSV | EDAM:format_3752 | Comma-separated values text file |
| H5AD | None | AnnData HDF5 format; used by scanpy/AnnData for single-cell expression data |
| MTX | None | Matrix Market sparse matrix format; used for 10x Genomics count matrices |
| Parquet | None | Apache Parquet columnar storage format; used for large tabular genomics data |
| Other | None | A file format not enumerated above |




## Slots

| Name | Description |
| ---  | --- |
| [file_format](file_format.md) | Bioinformatics format of the file |










## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank






## LinkML Source

<details>
```yaml
name: FileFormat
description: Common bioinformatics file formats. First-cut enumeration — extend as
  needed.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
permissible_values:
  FASTQ:
    text: FASTQ
    description: Raw sequencing reads with per-base quality scores (FASTQ format).
    meaning: EDAM:format_1930
  BAM:
    text: BAM
    description: Binary Alignment Map; compressed binary form of SAM.
    meaning: EDAM:format_2572
  CRAM:
    text: CRAM
    description: Reference-compressed sequence alignment format; more compact than
      BAM.
    meaning: EDAM:format_3462
  SAM:
    text: SAM
    description: Sequence Alignment/Map text format.
    meaning: EDAM:format_2573
  VCF:
    text: VCF
    description: Variant Call Format; stores SNPs, indels, and structural variants.
    meaning: EDAM:format_3016
  BCF:
    text: BCF
    description: Binary Variant Call Format; compressed binary equivalent of VCF.
    meaning: EDAM:format_3020
  BED:
    text: BED
    description: Browser Extensible Data; tab-delimited genomic interval format.
    meaning: EDAM:format_3003
  GFF:
    text: GFF
    description: General Feature Format; generic genomic annotation format.
    meaning: EDAM:format_2305
  GTF:
    text: GTF
    description: Gene Transfer Format (GFF version 2 extended); gene annotation format.
    meaning: EDAM:format_2306
  TSV:
    text: TSV
    description: Tab-separated values text file.
    meaning: EDAM:format_3475
  CSV:
    text: CSV
    description: Comma-separated values text file.
    meaning: EDAM:format_3752
  H5AD:
    text: H5AD
    description: AnnData HDF5 format; used by scanpy/AnnData for single-cell expression
      data.
  MTX:
    text: MTX
    description: Matrix Market sparse matrix format; used for 10x Genomics count matrices.
  Parquet:
    text: Parquet
    description: Apache Parquet columnar storage format; used for large tabular genomics
      data.
  Other:
    text: Other
    description: A file format not enumerated above.

```
</details>

</div>