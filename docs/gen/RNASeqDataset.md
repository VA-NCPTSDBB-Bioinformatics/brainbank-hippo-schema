---
search:
  boost: 10.0
---

# Class: RNASeqDataset 


_Transcriptomics (bulk or single-nucleus RNA-seq) expression output dataset._



<div data-search-exclude markdown="1">



URI: [brainbank:RNASeqDataset](https://w3id.org/VA-NCPTSDBB/brainbank/RNASeqDataset)





```mermaid
 classDiagram
    class RNASeqDataset
    click RNASeqDataset href "../RNASeqDataset/"
      SequenceDataset <|-- RNASeqDataset
        click SequenceDataset href "../SequenceDataset/"
      
      RNASeqDataset : assay_type
        
          
    
        
        
        RNASeqDataset --> "0..1" AssayType : assay_type
        click AssayType href "../AssayType/"
    

        
      RNASeqDataset : category
        
      RNASeqDataset : data_location
        
      RNASeqDataset : dataset_id
        
      RNASeqDataset : description
        
      RNASeqDataset : file_sets
        
          
    
        
        
        RNASeqDataset --> "*" FileSet : file_sets
        click FileSet href "../FileSet/"
    

        
      RNASeqDataset : files
        
          
    
        
        
        RNASeqDataset --> "*" File : files
        click File href "../File/"
    

        
      RNASeqDataset : gene_model
        
      RNASeqDataset : genome_build
        
          
    
        
        
        RNASeqDataset --> "0..1" GenomeBuild : genome_build
        click GenomeBuild href "../GenomeBuild/"
    

        
      RNASeqDataset : id
        
      RNASeqDataset : n_reads
        
      RNASeqDataset : name
        
      RNASeqDataset : produced_by
        
          
    
        
        
        RNASeqDataset --> "0..1 _recommended_" Activity : produced_by
        click Activity href "../Activity/"
    

        
      RNASeqDataset : quantification
        
          
    
        
        
        RNASeqDataset --> "0..1" RNAQuantification : quantification
        click RNAQuantification href "../RNAQuantification/"
    

        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Dataset](Dataset.md)
        * [SequenceDataset](SequenceDataset.md)
            * **RNASeqDataset**


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [quantification](quantification.md) | 0..1 <br/> [RNAQuantification](RNAQuantification.md) | Quantification unit reported in the expression matrix (e | direct |
| [gene_model](gene_model.md) | 0..1 <br/> [String](String.md) | Annotation/gene model used for quantification (e | direct |
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
| self | brainbank:RNASeqDataset |
| native | brainbank:RNASeqDataset |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: RNASeqDataset
description: Transcriptomics (bulk or single-nucleus RNA-seq) expression output dataset.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: SequenceDataset
attributes:
  quantification:
    name: quantification
    description: Quantification unit reported in the expression matrix (e.g. raw counts,
      TPM).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    domain_of:
    - RNASeqDataset
    range: RNAQuantification
  gene_model:
    name: gene_model
    description: Annotation/gene model used for quantification (e.g. GENCODE release,
      Ensembl version).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    domain_of:
    - RNASeqDataset

```
</details>

### Induced

<details>
```yaml
name: RNASeqDataset
description: Transcriptomics (bulk or single-nucleus RNA-seq) expression output dataset.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: SequenceDataset
attributes:
  quantification:
    name: quantification
    description: Quantification unit reported in the expression matrix (e.g. raw counts,
      TPM).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: RNASeqDataset
    domain_of:
    - RNASeqDataset
    range: RNAQuantification
  gene_model:
    name: gene_model
    description: Annotation/gene model used for quantification (e.g. GENCODE release,
      Ensembl version).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: RNASeqDataset
    domain_of:
    - RNASeqDataset
    range: string
  genome_build:
    name: genome_build
    description: Reference genome assembly used for alignment or variant calling.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: RNASeqDataset
    domain_of:
    - SequenceDataset
    - GenotypingDataset
    range: GenomeBuild
  n_reads:
    name: n_reads
    description: Total number of sequencing reads (or read pairs) in this dataset.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: RNASeqDataset
    domain_of:
    - SequenceDataset
    range: integer
  dataset_id:
    name: dataset_id
    description: Business identifier for this dataset (human-facing ID or accession).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: RNASeqDataset
    domain_of:
    - Dataset
    range: string
    required: true
  assay_type:
    name: assay_type
    description: OBI assay type that generated this dataset.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: RNASeqDataset
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
    owner: RNASeqDataset
    domain_of:
    - Dataset
    range: uriorcurie
  files:
    name: files
    description: The individual files that make up this dataset.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    owner: RNASeqDataset
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
    owner: RNASeqDataset
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
    owner: RNASeqDataset
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
    owner: RNASeqDataset
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: RNASeqDataset
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: RNASeqDataset
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
    owner: RNASeqDataset
    domain_of:
    - NamedThing
    range: string

```
</details></div>