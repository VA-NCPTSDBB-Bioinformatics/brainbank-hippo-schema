---
search:
  boost: 5.0
---

# Slot: inputs 

<div data-search-exclude markdown="1">



URI: [brainbank:inputs](https://w3id.org/VA-NCPTSDBB/brainbank/inputs)
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
| [BlockDura](BlockDura.md) | Block dura mater tissue into smaller pieces for histology or molecular proces... |  yes  |
| [BlockMuscle](BlockMuscle.md) | Block muscle tissue into smaller pieces for histology or molecular processing |  yes  |
| [BlockSpinalCord](BlockSpinalCord.md) | Block spinal cord tissue into segments for histology or molecular processing |  yes  |
| [BlockFrozenBrain](BlockFrozenBrain.md) | Block a frozen (unfixed) brain or brain region into pieces for further dissec... |  no  |
| [BlockFixedBrain](BlockFixedBrain.md) | Block a fixed (formalin-fixed) brain for histology embedding and sectioning |  no  |
| [BlockFixedHemisphere](BlockFixedHemisphere.md) | Block a fixed hemisphere into coronal slabs for systematic regional sampling |  no  |
| [SectionFixedBrain](SectionFixedBrain.md) | Section (cut) a fixed brain or hemisphere into thin sections for histology |  no  |
| [DissectFrozenBrain](DissectFrozenBrain.md) | Dissect a frozen brain or brain region into named CNS sections for molecular ... |  yes  |
| [DissectFixedBrain](DissectFixedBrain.md) | Dissect a fixed brain or brain region into named CNS sections for histology |  yes  |
| [CultureTissue](CultureTissue.md) | Abstract base for tissue-culture processes that establish cell cultures from ... |  no  |
| [CultureDura](CultureDura.md) | Establish a cell culture from dura mater tissue (typically fibroblast culture... |  yes  |
| [CultureSkin](CultureSkin.md) | Establish a cell culture from skin tissue (typically fibroblast culture) |  yes  |
| [SliceTissueToSlide](SliceTissueToSlide.md) | Base process for cutting tissue into slides and applying an IHC stain |  no  |
| [CreateBrainSlide](CreateBrainSlide.md) | Cut brain tissue and mount on a slide with an IHC stain applied |  no  |
| [CreateSpinalCordSlide](CreateSpinalCordSlide.md) | Cut spinal cord tissue and mount on a slide with an IHC stain applied |  yes  |
| [Process](Process.md) | A specimen-processing/transformation event (generalizes tissue_db:Transaction... |  no  |
| [Assay](Assay.md) | An assay run: the process node that consumes input Samples and produces Datas... |  no  |
| [SequencingAssay](SequencingAssay.md) | Abstract base for next-generation sequencing assays |  no  |
| [RNASeqAssay](RNASeqAssay.md) | An RNA sequencing assay (bulk or single-nucleus RNA-seq) |  no  |
| [GenomeSequencingAssay](GenomeSequencingAssay.md) | A whole-genome or whole-exome DNA sequencing assay |  no  |
| [ATACSeqAssay](ATACSeqAssay.md) | An ATAC-seq chromatin-accessibility assay |  no  |
| [ArrayAssay](ArrayAssay.md) | Abstract base for microarray-based assays |  no  |
| [GenotypingAssay](GenotypingAssay.md) | A SNP-array genotyping assay |  no  |
| [MethylationArrayAssay](MethylationArrayAssay.md) | An array-based DNA methylation assay (e |  no  |
| [ImagingAssay](ImagingAssay.md) | A histology or IHC imaging assay that digitizes stained tissue sections |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [Process](Process.md), [Assay](Assay.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:inputs |
| native | brainbank:inputs |




## LinkML Source

<details>
```yaml
name: inputs
domain_of:
- Process
- Assay
range: string

```
</details></div>