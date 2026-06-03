---
search:
  boost: 2.0
---


# Enum: ChecksumAlgorithm 




_Cryptographic or hash algorithms used for file checksums._



<div data-search-exclude markdown="1">

URI: [brainbank:ChecksumAlgorithm](https://w3id.org/VA-NCPTSDBB/brainbank/ChecksumAlgorithm)

## Permissible Values
| Value | Meaning | Description |
| --- | --- | --- |
| md5 | None | MD5 message-digest algorithm (128-bit hash) |
| sha1 | None | SHA-1 secure hash algorithm (160-bit hash) |
| sha256 | None | SHA-256 secure hash algorithm (256-bit hash); preferred for new data |




## Slots

| Name | Description |
| ---  | --- |
| [checksum_algorithm](checksum_algorithm.md) | Algorithm used to compute the checksum (e |










## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank






## LinkML Source

<details>
```yaml
name: ChecksumAlgorithm
description: Cryptographic or hash algorithms used for file checksums.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
permissible_values:
  md5:
    text: md5
    description: MD5 message-digest algorithm (128-bit hash).
  sha1:
    text: sha1
    description: SHA-1 secure hash algorithm (160-bit hash).
  sha256:
    text: sha256
    description: SHA-256 secure hash algorithm (256-bit hash); preferred for new data.

```
</details>

</div>