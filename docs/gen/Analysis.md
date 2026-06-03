---
search:
  boost: 10.0
---

# Class: Analysis 


_A computational process: the EXECUTION that consumes input Datasets and produces output Datasets. Base for any analysis step; engine-driven runs are the WorkflowRun subclass. protocol/performed_on are inherited from core.Activity._



<div data-search-exclude markdown="1">



URI: [brainbank:Analysis](https://w3id.org/VA-NCPTSDBB/brainbank/Analysis)





```mermaid
 classDiagram
    class Analysis
    click Analysis href "../Analysis/"
      Activity <|-- Analysis
        click Activity href "../Activity/"
      

      Analysis <|-- WorkflowRun
        click WorkflowRun href "../WorkflowRun/"
      

      Analysis : category
        
      Analysis : compute_environment
        
      Analysis : description
        
      Analysis : ended_at
        
      Analysis : id
        
      Analysis : input_datasets
        
          
    
        
        
        Analysis --> "*" Dataset : input_datasets
        click Dataset href "../Dataset/"
    

        
      Analysis : name
        
      Analysis : output_datasets
        
          
    
        
        
        Analysis --> "*" Dataset : output_datasets
        click Dataset href "../Dataset/"
    

        
      Analysis : parameters
        
          
    
        
        
        Analysis --> "*" Parameter : parameters
        click Parameter href "../Parameter/"
    

        
      Analysis : parent_analysis
        
          
    
        
        
        Analysis --> "0..1" Analysis : parent_analysis
        click Analysis href "../Analysis/"
    

        
      Analysis : performed_on
        
      Analysis : protocol
        
          
    
        
        
        Analysis --> "0..1 _recommended_" Protocol : protocol
        click Protocol href "../Protocol/"
    

        
      Analysis : started_at
        
      Analysis : status
        
          
    
        
        
        Analysis --> "0..1" AnalysisStatus : status
        click AnalysisStatus href "../AnalysisStatus/"
    

        
      
```





## Inheritance
* [NamedThing](NamedThing.md)
    * [Activity](Activity.md)
        * **Analysis**
            * [WorkflowRun](WorkflowRun.md)


## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [input_datasets](input_datasets.md) | * <br/> [Dataset](Dataset.md) | Datasets consumed by this analysis | direct |
| [output_datasets](output_datasets.md) | * <br/> [Dataset](Dataset.md) | Datasets produced by this analysis | direct |
| [parameters](parameters.md) | * <br/> [Parameter](Parameter.md) | Parameters/settings supplied to the run | direct |
| [started_at](started_at.md) | 0..1 <br/> [Datetime](Datetime.md) | Date-time when this analysis run started execution | direct |
| [ended_at](ended_at.md) | 0..1 <br/> [Datetime](Datetime.md) | Date-time when this analysis run finished (successfully or with failure) | direct |
| [status](status.md) | 0..1 <br/> [AnalysisStatus](AnalysisStatus.md) | Execution status of this analysis run | direct |
| [compute_environment](compute_environment.md) | 0..1 <br/> [String](String.md) | Free-text description of where/how it ran (cluster, cloud, profile) | direct |
| [parent_analysis](parent_analysis.md) | 0..1 <br/> [Analysis](Analysis.md) | Enclosing analysis, if this is a sub-step | direct |
| [protocol](protocol.md) | 0..1 _recommended_ <br/> [Protocol](Protocol.md) | The SOP/method this activity followed | [Activity](Activity.md) |
| [performed_on](performed_on.md) | 0..1 <br/> [Date](Date.md) | Date the activity was carried out | [Activity](Activity.md) |
| [id](id.md) | 1 <br/> [Uriorcurie](Uriorcurie.md) | Technical identifier (UUID/CURIE); becomes hippo-managed later | [NamedThing](NamedThing.md) |
| [name](name.md) | 1 <br/> [String](String.md) | Human-readable label for the entity | [NamedThing](NamedThing.md) |
| [description](description.md) | 0..1 <br/> [String](String.md) | Free-text narrative description of the entity | [NamedThing](NamedThing.md) |
| [category](category.md) | 0..1 <br/> [String](String.md) | Names the concrete class of this instance | [NamedThing](NamedThing.md) |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [BrainBank](BrainBank.md) | [analyses](analyses.md) | range | [Analysis](Analysis.md) |
| [Analysis](Analysis.md) | [parent_analysis](parent_analysis.md) | range | [Analysis](Analysis.md) |
| [WorkflowRun](WorkflowRun.md) | [parent_analysis](parent_analysis.md) | range | [Analysis](Analysis.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | brainbank:Analysis |
| native | brainbank:Analysis |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: Analysis
description: 'A computational process: the EXECUTION that consumes input Datasets
  and produces output Datasets. Base for any analysis step; engine-driven runs are
  the WorkflowRun subclass. protocol/performed_on are inherited from core.Activity.'
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Activity
attributes:
  input_datasets:
    name: input_datasets
    description: Datasets consumed by this analysis.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/analysis
    rank: 1000
    domain_of:
    - Analysis
    range: Dataset
    multivalued: true
  output_datasets:
    name: output_datasets
    description: Datasets produced by this analysis. Each such Dataset should also
      point back via produced_by -> this Analysis.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/analysis
    rank: 1000
    domain_of:
    - Analysis
    range: Dataset
    multivalued: true
  parameters:
    name: parameters
    description: Parameters/settings supplied to the run.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/analysis
    rank: 1000
    domain_of:
    - Analysis
    range: Parameter
    multivalued: true
    inlined_as_list: true
  started_at:
    name: started_at
    description: Date-time when this analysis run started execution.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/analysis
    rank: 1000
    domain_of:
    - Analysis
    range: datetime
  ended_at:
    name: ended_at
    description: Date-time when this analysis run finished (successfully or with failure).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/analysis
    rank: 1000
    domain_of:
    - Analysis
    range: datetime
  status:
    name: status
    description: Execution status of this analysis run.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/analysis
    rank: 1000
    domain_of:
    - Analysis
    range: AnalysisStatus
  compute_environment:
    name: compute_environment
    description: Free-text description of where/how it ran (cluster, cloud, profile).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/analysis
    rank: 1000
    domain_of:
    - Analysis
  parent_analysis:
    name: parent_analysis
    description: Enclosing analysis, if this is a sub-step. SEAM for future fine-grained
      provenance (a nextflow process / snakemake rule); not built out in the prototype.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/analysis
    rank: 1000
    domain_of:
    - Analysis
    range: Analysis

```
</details>

### Induced

<details>
```yaml
name: Analysis
description: 'A computational process: the EXECUTION that consumes input Datasets
  and produces output Datasets. Base for any analysis step; engine-driven runs are
  the WorkflowRun subclass. protocol/performed_on are inherited from core.Activity.'
from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/brainbank
is_a: Activity
attributes:
  input_datasets:
    name: input_datasets
    description: Datasets consumed by this analysis.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/analysis
    rank: 1000
    owner: Analysis
    domain_of:
    - Analysis
    range: Dataset
    multivalued: true
  output_datasets:
    name: output_datasets
    description: Datasets produced by this analysis. Each such Dataset should also
      point back via produced_by -> this Analysis.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/analysis
    rank: 1000
    owner: Analysis
    domain_of:
    - Analysis
    range: Dataset
    multivalued: true
  parameters:
    name: parameters
    description: Parameters/settings supplied to the run.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/analysis
    rank: 1000
    owner: Analysis
    domain_of:
    - Analysis
    range: Parameter
    multivalued: true
    inlined: true
    inlined_as_list: true
  started_at:
    name: started_at
    description: Date-time when this analysis run started execution.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/analysis
    rank: 1000
    owner: Analysis
    domain_of:
    - Analysis
    range: datetime
  ended_at:
    name: ended_at
    description: Date-time when this analysis run finished (successfully or with failure).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/analysis
    rank: 1000
    owner: Analysis
    domain_of:
    - Analysis
    range: datetime
  status:
    name: status
    description: Execution status of this analysis run.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/analysis
    rank: 1000
    owner: Analysis
    domain_of:
    - Analysis
    range: AnalysisStatus
  compute_environment:
    name: compute_environment
    description: Free-text description of where/how it ran (cluster, cloud, profile).
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/analysis
    rank: 1000
    owner: Analysis
    domain_of:
    - Analysis
    range: string
  parent_analysis:
    name: parent_analysis
    description: Enclosing analysis, if this is a sub-step. SEAM for future fine-grained
      provenance (a nextflow process / snakemake rule); not built out in the prototype.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/analysis
    rank: 1000
    owner: Analysis
    domain_of:
    - Analysis
    range: Analysis
  protocol:
    name: protocol
    description: The SOP/method this activity followed.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: Analysis
    domain_of:
    - Activity
    range: Protocol
    recommended: true
  performed_on:
    name: performed_on
    description: Date the activity was carried out.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: Analysis
    domain_of:
    - Activity
    range: date
  id:
    name: id
    description: Technical identifier (UUID/CURIE); becomes hippo-managed later.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    identifier: true
    owner: Analysis
    domain_of:
    - NamedThing
    range: uriorcurie
    required: true
  name:
    name: name
    description: Human-readable label for the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: Analysis
    domain_of:
    - NamedThing
    range: string
    required: true
  description:
    name: description
    description: Free-text narrative description of the entity.
    from_schema: https://w3id.org/VA-NCPTSDBB/brainbank/core
    rank: 1000
    owner: Analysis
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
    owner: Analysis
    domain_of:
    - NamedThing
    range: string

```
</details></div>