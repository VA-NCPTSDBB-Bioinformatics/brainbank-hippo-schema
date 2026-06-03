---
search:
  boost: 10.0
---

# Class: GenomeVariantDataset 


_Whole-genome or whole-exome sequencing variant call output dataset._



<div data-search-exclude markdown="1">



URI: [brainbank:GenomeVariantDataset](https://w3id.org/VA-NCPTSDBB/brainbank/GenomeVariantDataset)





```mermaid
 classDiagram
    class GenomeVariantDataset
    click GenomeVariantDataset href "../GenomeVariantDataset/"
      SequenceDataset <|-- GenomeVariantDataset
        click SequenceDataset href "../SequenceDataset/"
      
      GenomeVariantDataset : assay_type
        
          
    
        
        
        GenomeVariantDataset --> "0..1" AssayType : assay_type
        click AssayType href "../AssayType/"
    

        
      GenomeVariantDataset : category
        
      GenomeVariantDataset : data_location
        
      GenomeVariantDataset : dataset_id
        
      GenomeVariantDataset : description
        
      GenomeVariantDataset : file_sets
        
          
    
        
        
        GenomeVariantDataset --> "*" FileSet : file_sets
        click FileSet href "../FileSet/"
    

        
      GenomeVariantDataset : files
        
          
    
        
        
        GenomeVariantDataset --> "*" File : files
        click File href "../File/"
    

        
      GenomeVariantDataset : genome_build
        
          
    
        
        
        GenomeVariantDataset --> "0..1" GenomeBuild : genome_build
        click GenomeBuild href "../GenomeBuild/"
    

        
      GenomeVariantDataset : id
        
      GenomeVariantDataset : n_reads
        
      GenomeVariantDataset : n_variants
        
      GenomeVariantDataset : name
        
      GenomeVariantDataset : produced_by
        
          
    
        
        
        GenomeVariantDataset --> "0..1 _recommended_" Activity : produced_by
        click Activity href "../Activity/"
    

        
      GenomeVariantDataset : sequencing_strategy
        
          
    
        
        
        GenomeVariantDataset --> "0..1" SequencingStrategy : sequencing_strategy
        click SequencingStrategy href "../SequencingStrategy/"
    

        
      GenomeVariantDataset : variant_caller
        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Dataset](Dataset.md)
        * [SequenceDataset](SequenceDataset.md)
            * **GenomeVariantDataset**


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [sequencing_strategy](sequencing_strategy.md) | 0..1 <br/> [SequencingStrategy](SequencingStrategy.md) | Sequencing strategy used to generate this variant dataset (WGS, WES, or targe... | direct |
| [variant_caller](variant_caller.md) | 0..1 <br/> [String](String.md) | Name and version of the variant-calling software used (e | direct |
| [n_variants](n_variants.md) | 0..1 <br/> [Integer](Integer.md) | Total number of variant calls in this dataset | direct |
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
| self | brainbank:GenomeVariantDataset |
| native | brainbank:GenomeVariantDataset |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: GenomeVariantDataset
description: Whole-genome or whole-exome sequencing variant call output dataset.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: SequenceDataset
attributes:
  sequencing_strategy:
    name: sequencing_strategy
    description: Sequencing strategy used to generate this variant dataset (WGS, WES,
      or targeted).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    domain_of:
    - GenomeVariantDataset
    - GenomeSequencingAssay
    range: SequencingStrategy
  variant_caller:
    name: variant_caller
    description: Name and version of the variant-calling software used (e.g. GATK
      HaplotypeCaller 4.4).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    domain_of:
    - GenomeVariantDataset
  n_variants:
    name: n_variants
    description: Total number of variant calls in this dataset.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    domain_of:
    - GenomeVariantDataset
    - GenotypingDataset
    range: integer

```
</details>

### Induced

<details>
```yaml
name: GenomeVariantDataset
description: Whole-genome or whole-exome sequencing variant call output dataset.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: SequenceDataset
attributes:
  sequencing_strategy:
    name: sequencing_strategy
    description: Sequencing strategy used to generate this variant dataset (WGS, WES,
      or targeted).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: GenomeVariantDataset
    domain_of:
    - GenomeVariantDataset
    - GenomeSequencingAssay
    range: SequencingStrategy
  variant_caller:
    name: variant_caller
    description: Name and version of the variant-calling software used (e.g. GATK
      HaplotypeCaller 4.4).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: GenomeVariantDataset
    domain_of:
    - GenomeVariantDataset
    range: string
  n_variants:
    name: n_variants
    description: Total number of variant calls in this dataset.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: GenomeVariantDataset
    domain_of:
    - GenomeVariantDataset
    - GenotypingDataset
    range: integer
  genome_build:
    name: genome_build
    description: Reference genome assembly used for alignment or variant calling.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: GenomeVariantDataset
    domain_of:
    - SequenceDataset
    - GenotypingDataset
    range: GenomeBuild
  n_reads:
    name: n_reads
    description: Total number of sequencing reads (or read pairs) in this dataset.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: GenomeVariantDataset
    domain_of:
    - SequenceDataset
    range: integer
  dataset_id:
    name: dataset_id
    description: Business identifier for this dataset (human-facing ID or accession).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: GenomeVariantDataset
    domain_of:
    - Dataset
    range: string
    required: true
  assay_type:
    name: assay_type
    description: OBI assay type that generated this dataset.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: GenomeVariantDataset
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
    owner: GenomeVariantDataset
    domain_of:
    - Dataset
    range: uriorcurie
  files:
    name: files
    description: The individual files that make up this dataset.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    owner: GenomeVariantDataset
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
    owner: GenomeVariantDataset
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
    owner: GenomeVariantDataset
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
    owner: GenomeVariantDataset
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: GenomeVariantDataset
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: GenomeVariantDataset
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
    owner: GenomeVariantDataset
    domain_of:
    - NamedThing
    range: string

```
</details></div>