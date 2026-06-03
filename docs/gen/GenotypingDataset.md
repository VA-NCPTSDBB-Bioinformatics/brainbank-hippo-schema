---
search:
  boost: 10.0
---

# Class: GenotypingDataset 


_SNP-array genotyping output dataset._



<div data-search-exclude markdown="1">



URI: [brainbank:GenotypingDataset](https://w3id.org/VA-NCPTSDBB/brainbank/GenotypingDataset)





```mermaid
 classDiagram
    class GenotypingDataset
    click GenotypingDataset href "../GenotypingDataset/"
      ArrayDataset <|-- GenotypingDataset
        click ArrayDataset href "../ArrayDataset/"
      
      GenotypingDataset : array_platform
        
          
    
        
        
        GenotypingDataset --> "0..1" ArrayPlatform : array_platform
        click ArrayPlatform href "../ArrayPlatform/"
    

        
      GenotypingDataset : assay_type
        
          
    
        
        
        GenotypingDataset --> "0..1" AssayType : assay_type
        click AssayType href "../AssayType/"
    

        
      GenotypingDataset : category
        
      GenotypingDataset : data_location
        
      GenotypingDataset : dataset_id
        
      GenotypingDataset : description
        
      GenotypingDataset : file_sets
        
          
    
        
        
        GenotypingDataset --> "*" FileSet : file_sets
        click FileSet href "../FileSet/"
    

        
      GenotypingDataset : files
        
          
    
        
        
        GenotypingDataset --> "*" File : files
        click File href "../File/"
    

        
      GenotypingDataset : genome_build
        
          
    
        
        
        GenotypingDataset --> "0..1" GenomeBuild : genome_build
        click GenomeBuild href "../GenomeBuild/"
    

        
      GenotypingDataset : id
        
      GenotypingDataset : n_variants
        
      GenotypingDataset : name
        
      GenotypingDataset : produced_by
        
          
    
        
        
        GenotypingDataset --> "0..1 _recommended_" Activity : produced_by
        click Activity href "../Activity/"
    

        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Dataset](Dataset.md)
        * [ArrayDataset](ArrayDataset.md)
            * **GenotypingDataset**


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [genome_build](genome_build.md) | 0..1 <br/> [GenomeBuild](GenomeBuild.md) | Reference genome build used for variant annotation | direct |
| [n_variants](n_variants.md) | 0..1 <br/> [Integer](Integer.md) | Number of genotyped variant sites in this dataset | direct |
| [array_platform](array_platform.md) | 0..1 <br/> [ArrayPlatform](ArrayPlatform.md) | Microarray platform used to generate this dataset | [ArrayDataset](ArrayDataset.md) |
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
| self | brainbank:GenotypingDataset |
| native | brainbank:GenotypingDataset |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: GenotypingDataset
description: SNP-array genotyping output dataset.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: ArrayDataset
attributes:
  genome_build:
    name: genome_build
    description: Reference genome build used for variant annotation.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    domain_of:
    - SequenceDataset
    - GenotypingDataset
    range: GenomeBuild
  n_variants:
    name: n_variants
    description: Number of genotyped variant sites in this dataset.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    domain_of:
    - GenomeVariantDataset
    - GenotypingDataset
    range: integer

```
</details>

### Induced

<details>
```yaml
name: GenotypingDataset
description: SNP-array genotyping output dataset.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: ArrayDataset
attributes:
  genome_build:
    name: genome_build
    description: Reference genome build used for variant annotation.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    owner: GenotypingDataset
    domain_of:
    - SequenceDataset
    - GenotypingDataset
    range: GenomeBuild
  n_variants:
    name: n_variants
    description: Number of genotyped variant sites in this dataset.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    owner: GenotypingDataset
    domain_of:
    - GenomeVariantDataset
    - GenotypingDataset
    range: integer
  array_platform:
    name: array_platform
    description: Microarray platform used to generate this dataset.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: GenotypingDataset
    domain_of:
    - ArrayDataset
    - ArrayAssay
    range: ArrayPlatform
  dataset_id:
    name: dataset_id
    description: Business identifier for this dataset (human-facing ID or accession).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: GenotypingDataset
    domain_of:
    - Dataset
    range: string
    required: true
  assay_type:
    name: assay_type
    description: OBI assay type that generated this dataset.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: GenotypingDataset
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
    owner: GenotypingDataset
    domain_of:
    - Dataset
    range: uriorcurie
  files:
    name: files
    description: The individual files that make up this dataset.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    owner: GenotypingDataset
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
    owner: GenotypingDataset
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
    owner: GenotypingDataset
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
    owner: GenotypingDataset
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: GenotypingDataset
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: GenotypingDataset
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
    owner: GenotypingDataset
    domain_of:
    - NamedThing
    range: string

```
</details></div>