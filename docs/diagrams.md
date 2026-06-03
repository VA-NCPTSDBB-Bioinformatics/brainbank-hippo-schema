# Schema Diagrams

These diagrams are auto-generated from the schema using `gen-erdiagram` (LinkML).
Regenerate them with:

```bash
make diagrams
```

Source files (checked-in for quick rendering): `docs/schema-overview.mmd` and
`docs/provenance-spine.mmd`.

---

## Module dependency DAG

The schema is split into eight modules with a clean, acyclic import graph. Lower layers
never reference upper layers, which keeps each module independently compilable.

```mermaid
graph LR
    core --> anatomy
    core --> person
    anatomy --> tissue
    person --> tissue
    tissue --> dataset
    dataset --> analysis
    tissue --> pathology
    core --> brainbank
    anatomy --> brainbank
    person --> brainbank
    tissue --> brainbank
    dataset --> brainbank
    analysis --> brainbank
    pathology --> brainbank
```

---

## Schema overview (entity-relation diagram)

All non-abstract concrete entities and their primary relationships, generated with
`gen-erdiagram --exclude-abstract-classes --exclude-attributes`.

```mermaid
erDiagram
Analysis {

}
AnatomicalStructure {

}
Assay {

}
BrainBank {

}
Cohort {

}
Container {

}
Dataset {

}
Donor {

}
File {

}
FileSet {

}
Location {

}
Parameter {

}
Person {

}
Process {

}
Protocol {

}
WorkflowDefinition {

}

Analysis ||--|o Analysis : "parent_analysis"
Analysis ||--|o Protocol : "protocol"
Analysis ||--}o Dataset : "input_datasets, output_datasets"
Analysis ||--}o Parameter : "parameters"
AnatomicalStructure ||--|o AnatomicalStructure : "part_of"
Assay ||--|o Protocol : "protocol"
Assay ||--}o Sample : "inputs"
BrainBank ||--}o Analysis : "analyses"
BrainBank ||--}o AnatomicalStructure : "anatomical_structures"
BrainBank ||--}o Assay : "assays"
BrainBank ||--}o Assessment : "assessments"
BrainBank ||--}o Cohort : "cohorts"
BrainBank ||--}o Container : "containers"
BrainBank ||--}o Dataset : "datasets"
BrainBank ||--}o Donor : "donors"
BrainBank ||--}o File : "files"
BrainBank ||--}o FileSet : "file_sets"
BrainBank ||--}o Location : "locations"
BrainBank ||--}o Process : "processes"
BrainBank ||--}o Sample : "samples"
BrainBank ||--}o WorkflowDefinition : "workflow_definitions"
Container ||--|o Container : "parent"
Container ||--|o Location : "location"
Dataset ||--|o Activity : "produced_by"
Dataset ||--}o File : "files"
Dataset ||--}o FileSet : "file_sets"
Donor ||--}o Cohort : "cohort"
FileSet ||--}| File : "files"
Location ||--|o Location : "parent_location"
Person ||--}o Cohort : "cohort"
Process ||--|o Protocol : "protocol"
Process ||--}o Sample : "inputs, outputs"
```

---

## Computational provenance spine

The key provenance chain from a wet-lab sample through to derived data, showing the
`core.Activity` base and how `File`/`FileSet` sit under a `Dataset`.

```mermaid
erDiagram
Activity {

}
Analysis {

}
AnatomicalStructure {

}
Assay {

}
Cohort {

}
Container {

}
Dataset {

}
Donor {

}
File {

}
FileSet {

}
LiquidSample {

}
Location {

}
Mass {

}
Parameter {

}
Process {

}
Protocol {

}
Sample {

}
SolidSample {

}
Volume {

}
WorkflowDefinition {

}
WorkflowRun {

}

Activity ||--|o Protocol : "protocol"
Analysis ||--|o Analysis : "parent_analysis"
Analysis ||--|o Protocol : "protocol"
Analysis ||--}o Dataset : "input_datasets, output_datasets"
Analysis ||--}o Parameter : "parameters"
AnatomicalStructure ||--|o AnatomicalStructure : "part_of"
Assay ||--|o Protocol : "protocol"
Assay ||--}o Sample : "inputs"
Container ||--|o Container : "parent"
Container ||--|o Location : "location"
Dataset ||--|o Activity : "produced_by"
Dataset ||--}o File : "files"
Dataset ||--}o FileSet : "file_sets"
Donor ||--}o Cohort : "cohort"
FileSet ||--}| File : "files"
LiquidSample ||--|o Container : "container"
LiquidSample ||--|o LiquidSample : "derived_from"
LiquidSample ||--|o Process : "produced_by"
LiquidSample ||--|o Volume : "volume"
LiquidSample ||--|| Donor : "donor"
LiquidSample ||--}o AnatomicalStructure : "anatomical_site"
Location ||--|o Location : "parent_location"
Process ||--|o Protocol : "protocol"
Process ||--}o Sample : "inputs, outputs"
Sample ||--|o Container : "container"
Sample ||--|o Process : "produced_by"
Sample ||--|o Sample : "derived_from"
Sample ||--|| Donor : "donor"
Sample ||--}o AnatomicalStructure : "anatomical_site"
SolidSample ||--|o Container : "container"
SolidSample ||--|o Mass : "mass"
SolidSample ||--|o Process : "produced_by"
SolidSample ||--|o SolidSample : "derived_from"
SolidSample ||--|| Donor : "donor"
SolidSample ||--}o AnatomicalStructure : "anatomical_site"
WorkflowRun ||--|o Analysis : "parent_analysis"
WorkflowRun ||--|| WorkflowDefinition : "protocol"
WorkflowRun ||--}o Dataset : "input_datasets, output_datasets"
WorkflowRun ||--}o Parameter : "parameters"
```

**Reading guide:**
- `||--||` — exactly one (required)
- `||--|o` — zero or one (optional)
- `||--}o` — zero or many (optional list)
- `||--}|` — one or more (required list)
