---
search:
  boost: 10.0
---

# Class: ATACSeqDataset 


_Chromatin-accessibility (ATAC-seq) peak/signal output dataset._



<div data-search-exclude markdown="1">



URI: [brainbank:ATACSeqDataset](https://w3id.org/VA-NCPTSDBB/brainbank/ATACSeqDataset)





```mermaid
 classDiagram
    class ATACSeqDataset
    click ATACSeqDataset href "../ATACSeqDataset/"
      SequenceDataset <|-- ATACSeqDataset
        click SequenceDataset href "../SequenceDataset/"
      
      ATACSeqDataset : assay_type
        
          
    
        
        
        ATACSeqDataset --> "0..1" AssayType : assay_type
        click AssayType href "../AssayType/"
    

        
      ATACSeqDataset : category
        
      ATACSeqDataset : data_location
        
      ATACSeqDataset : dataset_id
        
      ATACSeqDataset : description
        
      ATACSeqDataset : file_sets
        
          
    
        
        
        ATACSeqDataset --> "*" FileSet : file_sets
        click FileSet href "../FileSet/"
    

        
      ATACSeqDataset : files
        
          
    
        
        
        ATACSeqDataset --> "*" File : files
        click File href "../File/"
    

        
      ATACSeqDataset : genome_build
        
          
    
        
        
        ATACSeqDataset --> "0..1" GenomeBuild : genome_build
        click GenomeBuild href "../GenomeBuild/"
    

        
      ATACSeqDataset : id
        
      ATACSeqDataset : n_peaks
        
      ATACSeqDataset : n_reads
        
      ATACSeqDataset : name
        
      ATACSeqDataset : peak_caller
        
      ATACSeqDataset : produced_by
        
          
    
        
        
        ATACSeqDataset --> "0..1 _recommended_" Activity : produced_by
        click Activity href "../Activity/"
    

        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Dataset](Dataset.md)
        * [SequenceDataset](SequenceDataset.md)
            * **ATACSeqDataset**


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [peak_caller](peak_caller.md) | 0..1 <br/> [String](String.md) | Name and version of the peak-calling software used (e | direct |
| [n_peaks](n_peaks.md) | 0..1 <br/> [Integer](Integer.md) | Number of chromatin-accessibility peaks called in this dataset | direct |
| [genome_build](genome_build.md) | 0..1 <br/> [GenomeBuild](GenomeBuild.md) | Reference genome assembly used for alignment or variant calling | [SequenceDataset](SequenceDataset.md) |
| [n_reads](n_reads.md) | 0..1 <br/> [Integer](Integer.md) | Total number of sequencing reads (or read pairs) in this dataset | [SequenceDataset](SequenceDataset.md) |
| [dataset_id](dataset_id.md) | 1 <br/> [String](String.md) | Business identifier for this dataset (human-facing ID or accession) | [Dataset](Dataset.md) |
| [assay_type](assay_type.md) | 0..1 <br/> [AssayType](AssayType.md) | OBI assay type that generated this dataset | [Dataset](Dataset.md) |
| [data_location](data_location.md) | 0..1 <br/> [Uriorcurie](Uriorcurie.md) | Optional convenience pointer to the dataset root (e | [Dataset](Dataset.md) |
| [files](files.md) | * <br/> [File](File.md) | The individual files that make up this dataset | [Dataset](Dataset.md) |
| [file_sets](file_sets.md) | * <br/> [FileSet](FileSet.md) | Named groupings of files (e | [Dataset](Dataset.md) |
| [produced_by](produced_by.md) | 0..1 _recommended_ <br/> [Activity](Activity.md) | The activity that produced this dataset — an Assay (raw acquisition) or an An... | [Dataset](Dataset.md) |
| [id](id.md) | 1 <br/> [Uriorcurie](Uriorcurie.md) | Technical identifier (UUID/CURIE); becomes hippo-managed later | [NamedThing](NamedThing.md) |
| [name](name.md) | 1 <br/> [String](String.md) | Human-readable label for the entity | [NamedThing](NamedThing.md) |
| [description](description.md) | 0..1 <br/> [String](String.md) | Free-text narrative description of the entity | [NamedThing](NamedThing.md) |
| [category](category.md) | 0..1 <br/> [String](String.md) | Names the concrete class of this instance | [NamedThing](NamedThing.md) |















## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:ATACSeqDataset |
| native | brainbank:ATACSeqDataset |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ATACSeqDataset
description: Chromatin-accessibility (ATAC-seq) peak/signal output dataset.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: SequenceDataset
attributes:
  peak_caller:
    name: peak_caller
    description: Name and version of the peak-calling software used (e.g. MACS3 3.0).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    domain_of:
    - ATACSeqDataset
  n_peaks:
    name: n_peaks
    description: Number of chromatin-accessibility peaks called in this dataset.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    domain_of:
    - ATACSeqDataset
    range: integer

```
</details>

### Induced

<details>
```yaml
name: ATACSeqDataset
description: Chromatin-accessibility (ATAC-seq) peak/signal output dataset.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: SequenceDataset
attributes:
  peak_caller:
    name: peak_caller
    description: Name and version of the peak-calling software used (e.g. MACS3 3.0).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: ATACSeqDataset
    domain_of:
    - ATACSeqDataset
    range: string
  n_peaks:
    name: n_peaks
    description: Number of chromatin-accessibility peaks called in this dataset.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: ATACSeqDataset
    domain_of:
    - ATACSeqDataset
    range: integer
  genome_build:
    name: genome_build
    description: Reference genome assembly used for alignment or variant calling.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: ATACSeqDataset
    domain_of:
    - SequenceDataset
    - GenotypingDataset
    range: GenomeBuild
  n_reads:
    name: n_reads
    description: Total number of sequencing reads (or read pairs) in this dataset.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: ATACSeqDataset
    domain_of:
    - SequenceDataset
    range: integer
  dataset_id:
    name: dataset_id
    description: Business identifier for this dataset (human-facing ID or accession).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: ATACSeqDataset
    domain_of:
    - Dataset
    range: string
    required: true
  assay_type:
    name: assay_type
    description: OBI assay type that generated this dataset.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: ATACSeqDataset
    domain_of:
    - Dataset
    - Assay
    range: AssayType
  data_location:
    name: data_location
    description: Optional convenience pointer to the dataset root (e.g. a directory
      or DRS bundle URI). Per-file locations/formats live on the File objects in `files`/`file_sets`.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: ATACSeqDataset
    domain_of:
    - Dataset
    range: uriorcurie
  files:
    name: files
    description: The individual files that make up this dataset.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    owner: ATACSeqDataset
    domain_of:
    - BrainBank
    - Dataset
    - FileSet
    range: File
    multivalued: true
  file_sets:
    name: file_sets
    description: Named groupings of files (e.g. paired reads, alignment + index).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    owner: ATACSeqDataset
    domain_of:
    - BrainBank
    - Dataset
    range: FileSet
    multivalued: true
  produced_by:
    name: produced_by
    description: The activity that produced this dataset — an Assay (raw acquisition)
      or an Analysis/Workflow (computation). Links the dataset to its inputs.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    owner: ATACSeqDataset
    domain_of:
    - Sample
    - Dataset
    range: Activity
    recommended: true
  id:
    name: id
    description: Technical identifier (UUID/CURIE); becomes hippo-managed later.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    identifier: true
    owner: ATACSeqDataset
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: ATACSeqDataset
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: ATACSeqDataset
    domain_of:
    - NamedThing
    range: string
  category:
    name: category
    description: Names the concrete class of this instance. Lets polymorphic inlined
      collections (e.g. a `samples` list holding SolidSample/LiquidSample) instantiate
      the right subclass.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    designates_type: true
    owner: ATACSeqDataset
    domain_of:
    - NamedThing
    range: string

```
</details></div>