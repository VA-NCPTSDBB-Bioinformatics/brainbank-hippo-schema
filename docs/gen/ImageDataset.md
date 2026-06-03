---
search:
  boost: 10.0
---

# Class: ImageDataset 


_Histology or immunohistochemistry (IHC) image dataset (e.g. whole-slide image)._



<div data-search-exclude markdown="1">



URI: [brainbank:ImageDataset](https://w3id.org/VA-NCPTSDBB/brainbank/ImageDataset)





```mermaid
 classDiagram
    class ImageDataset
    click ImageDataset href "../ImageDataset/"
      Dataset <|-- ImageDataset
        click Dataset href "../Dataset/"
      
      ImageDataset : assay_type
        
          
    
        
        
        ImageDataset --> "0..1" AssayType : assay_type
        click AssayType href "../AssayType/"
    

        
      ImageDataset : category
        
      ImageDataset : data_location
        
      ImageDataset : dataset_id
        
      ImageDataset : description
        
      ImageDataset : file_sets
        
          
    
        
        
        ImageDataset --> "*" FileSet : file_sets
        click FileSet href "../FileSet/"
    

        
      ImageDataset : files
        
          
    
        
        
        ImageDataset --> "*" File : files
        click File href "../File/"
    

        
      ImageDataset : id
        
      ImageDataset : image_format
        
          
    
        
        
        ImageDataset --> "0..1" ImageFormat : image_format
        click ImageFormat href "../ImageFormat/"
    

        
      ImageDataset : magnification
        
      ImageDataset : name
        
      ImageDataset : pixel_size_um
        
      ImageDataset : produced_by
        
          
    
        
        
        ImageDataset --> "0..1 _recommended_" Activity : produced_by
        click Activity href "../Activity/"
    

        
      ImageDataset : stain
        
          
    
        
        
        ImageDataset --> "0..1" StainType : stain
        click StainType href "../StainType/"
    

        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Dataset](Dataset.md)
        * **ImageDataset**


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [image_format](image_format.md) | 0..1 <br/> [ImageFormat](ImageFormat.md) | File format of the image (e | direct |
| [stain](stain.md) | 0..1 <br/> [StainType](StainType.md) | IHC stain applied to the tissue before imaging | direct |
| [magnification](magnification.md) | 0..1 <br/> [Float](Float.md) | Objective magnification used during scanning (e | direct |
| [pixel_size_um](pixel_size_um.md) | 0..1 <br/> [Float](Float.md) | Physical size of one pixel in micrometers at the stated magnification | direct |
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
| self | brainbank:ImageDataset |
| native | brainbank:ImageDataset |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ImageDataset
description: Histology or immunohistochemistry (IHC) image dataset (e.g. whole-slide
  image).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Dataset
attributes:
  image_format:
    name: image_format
    description: File format of the image (e.g. SVS, OME-TIFF).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    domain_of:
    - ImageDataset
    range: ImageFormat
  stain:
    name: stain
    description: IHC stain applied to the tissue before imaging.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    domain_of:
    - SliceTissueToSlide
    - ImageDataset
    - ImagingAssay
    range: StainType
  magnification:
    name: magnification
    description: Objective magnification used during scanning (e.g. 20.0 for 20×).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    domain_of:
    - ImageDataset
    - ImagingAssay
    range: float
  pixel_size_um:
    name: pixel_size_um
    description: Physical size of one pixel in micrometers at the stated magnification.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    domain_of:
    - ImageDataset
    range: float

```
</details>

### Induced

<details>
```yaml
name: ImageDataset
description: Histology or immunohistochemistry (IHC) image dataset (e.g. whole-slide
  image).
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Dataset
attributes:
  image_format:
    name: image_format
    description: File format of the image (e.g. SVS, OME-TIFF).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: ImageDataset
    domain_of:
    - ImageDataset
    range: ImageFormat
  stain:
    name: stain
    description: IHC stain applied to the tissue before imaging.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    owner: ImageDataset
    domain_of:
    - SliceTissueToSlide
    - ImageDataset
    - ImagingAssay
    range: StainType
  magnification:
    name: magnification
    description: Objective magnification used during scanning (e.g. 20.0 for 20×).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: ImageDataset
    domain_of:
    - ImageDataset
    - ImagingAssay
    range: float
  pixel_size_um:
    name: pixel_size_um
    description: Physical size of one pixel in micrometers at the stated magnification.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: ImageDataset
    domain_of:
    - ImageDataset
    range: float
  dataset_id:
    name: dataset_id
    description: Business identifier for this dataset (human-facing ID or accession).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: ImageDataset
    domain_of:
    - Dataset
    range: string
    required: true
  assay_type:
    name: assay_type
    description: OBI assay type that generated this dataset.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    rank: 1000
    owner: ImageDataset
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
    owner: ImageDataset
    domain_of:
    - Dataset
    range: uriorcurie
  files:
    name: files
    description: The individual files that make up this dataset.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/dataset
    owner: ImageDataset
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
    owner: ImageDataset
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
    owner: ImageDataset
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
    owner: ImageDataset
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: ImageDataset
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: ImageDataset
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
    owner: ImageDataset
    domain_of:
    - NamedThing
    range: string

```
</details></div>