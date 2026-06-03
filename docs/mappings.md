# External Standard Mappings

This page documents how `brainbank-hippo-schema` elements align to established external
standards and ontologies. It serves two purposes:

1. **Orientation** — helps consumers understand what the schema elements mean in terms of
   well-known vocabularies.
2. **Pre-staging** — records the `exact_mappings` / `class_uri` annotations added to schema
   elements in preparation for the hippo-readiness seam (see [DESIGN.md §7](../DESIGN.md)).

Where an annotation was added to the schema, the **Status** column says *annotated*; where the
mapping is documented but not yet added (e.g. non-obvious or pending scope decision), it says
*documented only*.

---

## PROV-O (W3C Provenance Ontology)

PROV-O provides the spine of the provenance model. Three core classes map directly:

| Schema element | PROV-O term | Relationship | Status |
|---|---|---|---|
| `core.Activity` | `prov:Activity` | Exact — an `Activity` is something that occurs over time and acts on entities | annotated |
| `tissue.Process` | `prov:Activity` | Subtype — `Process is_a Activity`, all processes are PROV-O activities | annotated (via parent) |
| `dataset.Assay` | `prov:Activity` | Subtype — assay is a data-acquisition activity | annotated (via parent) |
| `analysis.Analysis` | `prov:Activity` | Subtype — computational analysis is an activity | annotated (via parent) |
| `analysis.WorkflowRun` | `prov:Activity` | Subtype | annotated (via parent) |
| `dataset.Dataset` | `prov:Entity` | Exact — a dataset is a PROV-O entity acted upon by activities | annotated |
| `dataset.File` | `prov:Entity` | Exact — a file is a PROV-O entity | annotated |
| `dataset.FileSet` | `prov:Entity` | Exact — a file bundle is a PROV-O entity | annotated |
| `core.NamedThing` | `prov:Entity` | Broad — all named things are PROV-O entities; use Dataset/File mappings for data artifacts | documented only |
| `core.Association` | `prov:Influence` | Approximate — reified relationships can model PROV-O influence/attribution | documented only |

**Provenance spine:** the key PROV-O pattern is
`Entity ← wasGeneratedBy ← Activity ← used ← Entity`. In this schema:

```
Donor (Entity) ← [implied] ← BankFreshBrain (Activity) → outputs → Sample (Entity)
Sample (Entity) ← used ← Assay (Activity) → wasGeneratedBy → Dataset (Entity)
Dataset (Entity) ← used ← WorkflowRun (Activity) → wasGeneratedBy → Dataset (Entity)
```

The `produced_by` slot on `Sample` and `Dataset` corresponds to PROV-O `wasGeneratedBy`.

---

## OBI (Ontology for Biomedical Investigations)

| Schema element | OBI term | Relationship | Status |
|---|---|---|---|
| `dataset.Assay` | `OBI:0000070` (assay) | Exact — an Assay is an OBI assay | annotated |
| `dataset.AssayType` enum | `OBI:0000070` subtree | Dynamic enum `reachable_from` OBI:0000070 | annotated (enum binding) |
| `dataset.SequencingAssay` | `OBI:0000070` subtype | High-throughput sequencing assays; refine to specific OBI terms (e.g. `OBI:0001271` for RNA-seq) as scope firms | documented only |
| `dataset.ImagingAssay` | `OBI:0000185` (imaging assay) | Approximate | documented only |
| `dataset.MethylationArrayAssay` | `OBI:0001041` (methylation profiling) | Approximate | documented only |

---

## Uberon (Uber-anatomy Ontology)

| Schema element | Uberon / anatomy term | Relationship | Status |
|---|---|---|---|
| `anatomy.AnatomicalSite` enum | `UBERON:0000465` (material anatomical entity) subtree | Dynamic enum `reachable_from` Uberon | annotated (enum binding) |
| `anatomy.AnatomicalStructure` | `UBERON:0000061` (anatomical structure) | Broad — local term class for Uberon-bound anatomy entries | documented only |
| `anatomy.AnatomicalStructure.fma_xref` | FMA | FMA cross-reference when Uberon is not specific enough | annotated (slot semantics) |

Selected brain-region classes in the `brainbank` extension layer map to Uberon terms:

| Class | Uberon term |
|---|---|
| `Cerebellum` | UBERON:0002037 |
| `Cerebrum` | UBERON:0001893 |
| `Hemisphere` (cerebral) | UBERON:0001869 / UBERON:0001870 |
| `Medulla` (oblongata) | UBERON:0001896 |
| `OlfactoryBulb` | UBERON:0002264 |
| `PinealGland` | UBERON:0001905 |
| `Pons` | UBERON:0000988 |
| `SubstantiaNigra` | UBERON:0002038 |
| `ChoroidPlexus` | UBERON:0001846 |
| `Pituitary` | UBERON:0000007 |
| `SpinalCord` | UBERON:0002240 |
| `CSF` (cerebrospinal fluid) | UBERON:0001359 |

These Uberon CURIEs will be wired as `exact_mappings:` or `class_uri:` on the individual classes
when the brain-region classes are promoted to include local metadata (DESIGN.md §7 hippo phase).

---

## PROV-O + GA4GH DRS (Data Repository Service)

| Schema element | DRS / standard | Relationship | Status |
|---|---|---|---|
| `dataset.File` | GA4GH DRS `DrsObject` | A `File.uri` may be a DRS URI (`drs://`) | documented only |
| `dataset.File.uri` | DRS `access_url` | Direct: `uri` is the access location | documented only |
| `dataset.File.checksum` + `checksum_algorithm` | DRS `Checksum` object | Structural equivalence | documented only |
| `dataset.FileSet` | DRS Bundle (multi-object) | Approximate — a `FileSet` groups files like a DRS bundle | documented only |

---

## Workflow-Run RO-Crate + Bioschemas

| Schema element | External term | Relationship | Status |
|---|---|---|---|
| `analysis.WorkflowDefinition` | `bioschemas:ComputationalWorkflow` | Exact — a versioned, shareable pipeline definition | annotated |
| `analysis.WorkflowRun` | `bioschemas:ComputationalWorkflow` execution | A WorkflowRun is a single execution of a WorkflowDefinition | annotated |
| `analysis.WorkflowDefinition.engine` | Workflow-Run RO-Crate `runtimePlatform` | Approximate mapping | documented only |
| `analysis.WorkflowDefinition.document_location` | bioschemas `url` / `codeRepository` | Pipeline source URL | documented only |
| `analysis.Parameter` | `bioschemas:FormalParameter` | Approximate — parameters to a workflow | documented only |

**Namespace:** `bioschemas: https://bioschemas.org/`

---

## NCBITaxon, MONDO, CL — Dynamic Enum Bindings

These are already wired as `reachable_from` enum bindings; no additional `exact_mappings` are needed
because the binding is explicit and machine-readable.

| Schema element | Ontology | Anchor term | Status |
|---|---|---|---|
| `person.Species` | NCBITaxon | `NCBITaxon:9606` (Homo sapiens) | annotated (enum binding) |
| `pathology.Disease` | MONDO | `MONDO:0000001` (disease or disorder) | annotated (enum binding) |
| `tissue.CellType` | Cell Ontology (CL) | `CL:0000000` (cell) | annotated (enum binding) |
| `anatomy.AnatomicalSite` | Uberon | `UBERON:0000465` (material anatomical entity) | annotated (enum binding) |
| `dataset.AssayType` | OBI | `OBI:0000070` (assay) | annotated (enum binding) |

---

## Units — UO (Units Ontology)

Mass, volume, and concentration units in `core.yaml` carry `meaning:` CURIEs from the
[Units Ontology](http://purl.obolibrary.org/obo/uo.owl) (prefix `UO:`). See `schema/core.yaml`
`MassUnit`, `VolumeUnit`, and `ConcentrationUnit`.

---

## File Formats — EDAM

File formats in `dataset.FileFormat` carry `meaning:` CURIEs from the
[EDAM ontology](http://edamontology.org/) (prefix `EDAM:`). See `schema/dataset.yaml`.

---

## RO (Relation Ontology)

| Schema element | RO term | Relationship | Status |
|---|---|---|---|
| `core.Association.predicate` | RO terms (e.g. `RO:0001000` derives from) | The predicate slot holds an RO CURIE | documented only |
| `tissue.Sample.derived_from` | `RO:0001000` (derives from) | The `derived_from` relationship corresponds to this RO predicate | documented only |
| `tissue.Sample.anatomical_site` | `RO:0001025` (located in) | Approximate — sample was taken from this anatomical site | documented only |

---

## Summary Table

| Standard | Prefix | URI base | Elements covered |
|---|---|---|---|
| PROV-O | `prov:` | `http://www.w3.org/ns/prov#` | Activity, Dataset, File, FileSet |
| OBI | `obi:` / `OBI:` | `http://purl.obolibrary.org/obo/OBI_` | Assay, AssayType enum |
| Uberon | `uberon:` / `UBERON:` | `http://purl.obolibrary.org/obo/UBERON_` | AnatomicalSite enum, brain-region classes |
| MONDO | `mondo:` / `MONDO:` | `http://purl.obolibrary.org/obo/MONDO_` | Disease enum |
| NCBITaxon | `ncbitaxon:` / `NCBITaxon:` | `http://purl.obolibrary.org/obo/NCBITaxon_` | Species enum |
| CL | `cl:` / `CL:` | `http://purl.obolibrary.org/obo/CL_` | CellType enum |
| RO | `ro:` / `RO:` | `http://purl.obolibrary.org/obo/RO_` | Association.predicate, derived_from |
| Units Ontology | `UO:` | `http://purl.obolibrary.org/obo/UO_` | MassUnit, VolumeUnit, ConcentrationUnit |
| EDAM | `EDAM:` | `http://edamontology.org/` | FileFormat |
| Bioschemas | `bioschemas:` | `https://bioschemas.org/` | WorkflowDefinition, WorkflowRun |
| GA4GH DRS | — | — | File (uri semantics, not yet annotated) |
| FMA | `fma:` | `http://purl.org/sig/ont/fma/fma` | AnatomicalStructure.fma_xref |
