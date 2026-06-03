---
search:
  boost: 10.0
---

# Class: MethylationDataset 


_Array-based DNA methylation (e.g. Illumina EPIC) output dataset._



<div data-search-exclude markdown="1">



URI: [brainbank:MethylationDataset](https://w3id.org/VA-NCPTSDBB/brainbank/MethylationDataset)





```mermaid
 classDiagram
    class MethylationDataset
    click MethylationDataset href "../MethylationDataset/"
      ArrayDataset <|-- MethylationDataset
        click ArrayDataset href "../ArrayDataset/"
      
      MethylationDataset : array_platform
        
          
    
        
        
        MethylationDataset --> "0..1" ArrayPlatform : array_platform
        click ArrayPlatform href "../ArrayPlatform/"
    

        
      MethylationDataset : assay_type
        
          
    
        
        
        MethylationDataset --> "0..1" AssayType : assay_type
        click AssayType href "../AssayType/"
    

        
      MethylationDataset : category
        
      MethylationDataset : data_location
        
      MethylationDataset : dataset_id
        
      MethylationDataset : description
        
      MethylationDataset : file_sets
        
          
    
        
        
        MethylationDataset --> "*" FileSet : file_sets
        click FileSet href "../FileSet/"
    

        
      MethylationDataset : files
        
          
    
        
        
        MethylationDataset --> "*" File : files
        click File href "../File/"
    

        
      MethylationDataset : id
        
      MethylationDataset : n_probes
        
      MethylationDataset : name
        
      MethylationDataset : produced_by
        
          
    
        
        
        MethylationDataset --> "0..1 _recommended_" Activity : produced_by
        click Activity href "../Activity/"
    

        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Dataset](Dataset.md)
        * [ArrayDataset](ArrayDataset.md)
            * **MethylationDataset**


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [n_probes](n_probes.md) | 0..1 <br/> [Integer](Integer.md) | Number of CpG probes passing QC in this dataset | direct |
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
| self | brainbank:MethylationDataset |
| native | brainbank:MethylationDataset |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: MethylationDataset
description: Array-based DNA methylation (e.g. Illumina EPIC) output dataset.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: ArrayDataset
attributes:
  n_probes:
    name: n_probes
    description: Number of CpG probes passing QC in this dataset.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    domain_of:
    - MethylationDataset
    range: integer

```
</details>

### Induced

<details>
```yaml
name: MethylationDataset
description: Array-based DNA methylation (e.g. Illumina EPIC) output dataset.
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: ArrayDataset
attributes:
  n_probes:
    name: n_probes
    description: Number of CpG probes passing QC in this dataset.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: MethylationDataset
    domain_of:
    - MethylationDataset
    range: integer
  array_platform:
    name: array_platform
    description: Microarray platform used to generate this dataset.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: MethylationDataset
    domain_of:
    - ArrayDataset
    - ArrayAssay
    range: ArrayPlatform
  dataset_id:
    name: dataset_id
    description: Business identifier for this dataset (human-facing ID or accession).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: MethylationDataset
    domain_of:
    - Dataset
    range: string
    required: true
  assay_type:
    name: assay_type
    description: OBI assay type that generated this dataset.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: MethylationDataset
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
    owner: MethylationDataset
    domain_of:
    - Dataset
    range: uriorcurie
  files:
    name: files
    description: The individual files that make up this dataset.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    owner: MethylationDataset
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
    owner: MethylationDataset
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
    owner: MethylationDataset
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
    owner: MethylationDataset
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: MethylationDataset
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: MethylationDataset
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
    owner: MethylationDataset
    domain_of:
    - NamedThing
    range: string

```
</details></div>