---
search:
  boost: 5.0
---

# Slot: protocol 


_The SOP/method this activity followed._



<div data-search-exclude markdown="1">



URI: [brainbank:protocol](https://w3id.org/VA-NCPTSDBB/brainbank/protocol)
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
| [Activity](Activity.md) | A PROV-style activity: something that occurs over time and acts on entities —... |  no  |
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
| [Analysis](Analysis.md) | A computational process: the EXECUTION that consumes input Datasets and produ... |  no  |
| [WorkflowRun](WorkflowRun.md) | A single execution of a WorkflowDefinition by a workflow engine (e |  yes  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Protocol](Protocol.md) |
| Domain Of | [Activity](Activity.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Recommended | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [Activity](Activity.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:protocol |
| native | brainbank:protocol |




## LinkML Source

<details>
```yaml
name: protocol
description: The SOP/method this activity followed.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
rank: 1000
owner: Activity
domain_of:
- Activity
range: Protocol
recommended: true

```
</details></div>