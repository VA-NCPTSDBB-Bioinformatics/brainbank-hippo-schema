# brainbank-hippo-schema

LinkML schema for the **VA National Center for PTSD Brain Bank** data store.

This is a **prototype in plain LinkML** — it deliberately does not yet adopt the hippo
`SchemaPackage`/`DomainModule`/ReferenceLoader runtime, the value-set materialization pipeline,
or the versioned-bundle distribution layer described in the design docs. Those are isolated
behind a documented "hippo-readiness seam" (see [DESIGN.md §7](https://github.com/VA-NCPTSDBB-Bioinformatics/brainbank-hippo-schema/blob/main/DESIGN.md)) so they can be
adopted later as a small, mechanical change rather than a rewrite.

---

## What this schema models

The brain bank schema captures the full life-cycle of tissue and data:

1. **Donors and cohorts** — deceased tissue donors (`Donor is_a Person`) with clinical metadata
   (age, PMI, sex, species) grouped into study cohorts.

2. **Samples and logistics** — physical specimens (`SolidSample`, `LiquidSample`) with
   anatomical site, container, and storage location. Brain-bank-specific material types
   (`CNSSection`, `Cerebellum`, `CSF`, `Blood`, `DNA`, `RNA`, …) extend the base classes.

3. **Lab workflow** — the ported brain-bank banking workflow (`BankFreshBrain`, `BankDura`,
   `DissectFrozenBrain`, `SliceTissueToSlide`, …) as typed `Process` subclasses, each with
   strongly-typed input and output slots.

4. **Assays and datasets** — assay process nodes (`RNASeqAssay`, `GenomeSequencingAssay`,
   `ImagingAssay`, …) that link samples to data artifacts. Dataset subclasses
   (`RNASeqDataset`, `GenomeVariantDataset`, `MethylationDataset`, …) with `File`/`FileSet`
   as the physical-file layer.

5. **Computational provenance** — `WorkflowDefinition` (the reusable pipeline recipe,
   `is_a Protocol`) and `WorkflowRun` (a single engine execution, `is_a Analysis is_a Activity`),
   linked via the `protocol` slot exactly as a wet-lab `Process` links to its SOP.

6. **Pathology** *(provisional)* — placeholder `Measurement` and `Diagnosis` classes for
   neuropathology staging scales (Braak, Thal, CERAD, etc.). Scope is TBD.

---

## Module layout

| Module | Purpose |
|---|---|
| `core` | `NamedThing` base, `Association`, `Activity` (PROV-style), `Protocol`, quantities/units |
| `anatomy` | `AnatomicalStructure` term class + Uberon-bound `AnatomicalSite` dynamic enum |
| `person` | `Person` / `Donor`, `Cohort`, `Species` |
| `tissue` | `Sample`/`SolidSample`/`LiquidSample`, `Container`, `Location`, `Process` |
| `dataset` | `Dataset`/`Assay` + typed subclasses per assay family; `File`/`FileSet` |
| `analysis` | Computational provenance — `WorkflowDefinition`, `Analysis`, `WorkflowRun` |
| `pathology` | Provisional — `Measurement` + `Diagnosis` placeholder |
| `brainbank` | Tree-root `BrainBank` container + lab extension layer |

See [Diagrams](diagrams.md) for the module DAG and entity-relation diagrams.

---

## Quick-start

```bash
pip install linkml
git clone https://github.com/VA-NCPTSDBB-Bioinformatics/brainbank-hippo-schema.git
cd brainbank-hippo-schema
make all        # lint + validate examples + gen-pydantic
```

Validate your own data:

```bash
linkml-validate -s schema/brainbank.yaml -C BrainBank my-data.yaml
```

---

## Navigation

- **Cookbook** — annotated walkthroughs of the validated examples, explaining key patterns
  (polymorphic collections, provenance placement, File/FileSet, WorkflowRun) → [Cookbook](cookbook.md)
- **Diagrams** — module DAG + entity-relation diagrams → [Diagrams](diagrams.md)
- **External mappings** — how schema elements align to PROV-O, OBI, Uberon, Bioschemas, etc. → [Mappings](mappings.md)
- **Reference** — auto-generated per-class / per-slot / per-enum reference pages → [Reference](gen/index.md)
- **Design** — full design brief and decision log → [`DESIGN.md`](https://github.com/VA-NCPTSDBB-Bioinformatics/brainbank-hippo-schema/blob/main/DESIGN.md)
- **Contributing** — schema conventions and workflow → [`CONTRIBUTING.md`](https://github.com/VA-NCPTSDBB-Bioinformatics/brainbank-hippo-schema/blob/main/CONTRIBUTING.md)
- **Changelog** — version history → [`CHANGELOG.md`](https://github.com/VA-NCPTSDBB-Bioinformatics/brainbank-hippo-schema/blob/main/CHANGELOG.md)
