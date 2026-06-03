---
search:
  boost: 5.0
---

# Slot: outputs 


_Specimens produced as output of this process._



<div data-search-exclude markdown="1">



URI: [brainbank:outputs](https://w3id.org/VA-NCPTSDBB/brainbank/outputs)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [BankFreshBrain](BankFreshBrain.md) | Bank a fresh (unfixed) brain: fix one hemisphere and freeze the rest as named... |  no  |
| [BankFixedBrain](BankFixedBrain.md) | Bank a chemically fixed (formalin-fixed) whole brain or hemisphere |  no  |
| [BankDura](BankDura.md) | Bank dura mater tissue, distributing specimens into fixed, frozen, and cultur... |  no  |
| [BankCSF](BankCSF.md) | Bank cerebrospinal fluid: aliquot into frozen aliquots, centrifuge to recover... |  no  |
| [BankBlood](BankBlood.md) | Bank a blood specimen: separate into typed aliquots (serum or plasma) and ret... |  no  |
| [BankSkin](BankSkin.md) | Bank skin tissue: distribute specimens into frozen and fixed fractions, with ... |  no  |
| [BankMuscle](BankMuscle.md) | Bank muscle tissue: distribute specimens into frozen and formalin-fixed fract... |  no  |
| [BankVessels](BankVessels.md) | Bank blood vessel tissue specimens |  no  |
| [BankSpinalCord](BankSpinalCord.md) | Bank spinal cord tissue: distribute specimens into frozen and formalin-fixed ... |  no  |
| [BlockDura](BlockDura.md) | Block dura mater tissue into smaller pieces for histology or molecular proces... |  no  |
| [BlockMuscle](BlockMuscle.md) | Block muscle tissue into smaller pieces for histology or molecular processing |  no  |
| [BlockSpinalCord](BlockSpinalCord.md) | Block spinal cord tissue into segments for histology or molecular processing |  no  |
| [BlockFrozenBrain](BlockFrozenBrain.md) | Block a frozen (unfixed) brain or brain region into pieces for further dissec... |  no  |
| [BlockFixedBrain](BlockFixedBrain.md) | Block a fixed (formalin-fixed) brain for histology embedding and sectioning |  no  |
| [BlockFixedHemisphere](BlockFixedHemisphere.md) | Block a fixed hemisphere into coronal slabs for systematic regional sampling |  no  |
| [SectionFixedBrain](SectionFixedBrain.md) | Section (cut) a fixed brain or hemisphere into thin sections for histology |  no  |
| [DissectFrozenBrain](DissectFrozenBrain.md) | Dissect a frozen brain or brain region into named CNS sections for molecular ... |  no  |
| [DissectFixedBrain](DissectFixedBrain.md) | Dissect a fixed brain or brain region into named CNS sections for histology |  no  |
| [CultureTissue](CultureTissue.md) | Abstract base for tissue-culture processes that establish cell cultures from ... |  no  |
| [CultureDura](CultureDura.md) | Establish a cell culture from dura mater tissue (typically fibroblast culture... |  no  |
| [CultureSkin](CultureSkin.md) | Establish a cell culture from skin tissue (typically fibroblast culture) |  no  |
| [SliceTissueToSlide](SliceTissueToSlide.md) | Base process for cutting tissue into slides and applying an IHC stain |  no  |
| [CreateBrainSlide](CreateBrainSlide.md) | Cut brain tissue and mount on a slide with an IHC stain applied |  no  |
| [CreateSpinalCordSlide](CreateSpinalCordSlide.md) | Cut spinal cord tissue and mount on a slide with an IHC stain applied |  no  |
| [Process](Process.md) | A specimen-processing/transformation event (generalizes tissue_db:Transaction... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Sample](Sample.md) |
| Domain Of | [Process](Process.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [Process](Process.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:outputs |
| native | brainbank:outputs |




## LinkML Source

<details>
```yaml
name: outputs
description: Specimens produced as output of this process.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: Process
domain_of:
- Process
range: Sample
multivalued: true

```
</details></div>