# Cookbook: worked examples

This page walks through the three CI-validated example files in `examples/`. Each one
illustrates a key pattern. Snippets are quoted directly from the example files — the same
files that pass `make validate` — so they accurately reflect what the schema accepts.

---

## Before you start: two things to know

### 1. The `category` slot and polymorphic collections

The `BrainBank` root object holds typed lists: `samples`, `processes`, `datasets`, etc.
Each list is `inlined_as_list: true` and its range is an abstract base class (e.g. `Sample`).
To tell LinkML which concrete subclass to instantiate, every object must carry a `category`
slot that names its class:

```yaml
samples:
  - id: SMP-001
    name: Frozen hippocampus block
    category: SolidSample        # ← required: names the concrete class
    sample_id: BB-0001-HIPP-01
    ...
```

Without `category`, the inlined object would be instantiated as the abstract base.

### 2. Dates in polymorphic collections

`linkml-validate` 1.11.x has a known quirk: date and datetime values fail JSON-Schema
validation when the slot is inside a polymorphic `anyOf` — this affects `performed_on`,
`started_at`, and `ended_at` inside the `processes` and `analyses` collections.

Those slots work correctly in the schema (Pydantic generates proper type annotations for
them). They are deliberately omitted from the example files only to keep CI green.
See DESIGN.md §8 and §10 for details.

---

## Example 1: Donor → Sample → Assay → Dataset

**File:** `examples/brainbank-example.yaml`

This example shows the core provenance chain. A donor contributes a sample; an assay
processes it; a dataset records the result.

### Donor

```yaml
donors:
  - id: DNR-001
    name: Donor 001
    category: Donor
    person_id: BB-0001
    species: NCBITaxon:9606
    sex: male
    age_at_death: 72.0
    post_mortem_interval_hours: 18.5
    cohort:
      - COH-PTSD
```

- `species` is a CURIE from the NCBI Taxonomy dynamic enum.
- `cohort` is a list of references to `Cohort` objects defined in the `cohorts` collection.
- `age_at_death` and `post_mortem_interval_hours` are Donor-specific slots (not on Person).

### Sample

```yaml
samples:
  - id: SMP-001
    name: Frozen hippocampus block
    category: SolidSample
    sample_id: BB-0001-HIPP-01
    donor: DNR-001
    anatomical_site:
      - ANAT-HIPP
    container: BOX-001
    format: Block
    mass:
      value: 1.2
      unit: g
```

- `donor` is a reference to a `Donor` in `donors` by id.
- `anatomical_site` references `AnatomicalStructure` objects in the `anatomical_structures`
  collection (not bare Uberon CURIEs — those live inside `AnatomicalStructure.ontology_term`).
- `format` must be a valid `SolidSampleFormat` enum value.
- `mass` is an inlined `core.Mass` object with `value` and `unit`.

### Assay

```yaml
assays:
  - id: ASY-001
    name: snRNA-seq of BB-0001 hippocampus
    category: RNASeqAssay
    assay_type: OBI:0000070
    inputs:
      - SMP-001
    platform: Illumina
    read_length: 150
    paired_end: true
```

- `inputs` lists sample ids — this is the many-to-many seam between samples and datasets.
- `assay_type` is an OBI CURIE from the dynamic `AssayType` enum.
- The assay has no `outputs` slot (unlike `Process`): datasets point *to* their producing
  assay via `produced_by`, not the other way around.

### Dataset

```yaml
datasets:
  - id: DS-001
    name: BB-0001 hippocampus snRNA-seq counts
    category: RNASeqDataset
    dataset_id: BB-0001-HIPP-RNA-01
    assay_type: OBI:0000070
    produced_by: ASY-001
    data_location: s3://example-bucket/BB-0001/hipp/snRNAseq/
    genome_build: GRCh38
    quantification: raw_counts
```

- `produced_by` points to an Assay (for raw data) or Analysis/WorkflowRun (for derived data).
  This is how provenance is traced: `Dataset → produced_by → Assay → inputs → Sample[]`.
- `data_location` is a convenience pointer to the dataset root; per-file locations live on
  `File` objects.

---

## Example 2: Brain-bank lab workflow (`BankFreshBrain`, `DissectFrozenBrain`, `CreateBrainSlide`)

**File:** `examples/brainbank-workflow-example.yaml`

This example exercises the brain-bank extension layer: the ported `BankFreshBrain` process
that banks a fresh brain into named frozen regions, a `DissectFrozenBrain` that cuts further
samples from a frozen region, and a `CreateBrainSlide` that produces a stained slide.

### Input material

```yaml
samples:
  - { id: BR-100,  name: Fresh brain BB-0100, category: Brain,
      sample_id: BB-0100-BR, donor: DNR-100, format: Whole brain }
```

`Brain` is a brain-bank extension class (`is_a SolidSample`). `format: Whole brain` is a
`SolidSampleFormat` enum value.

### BankFreshBrain process

```yaml
processes:
  - id: BANK-100
    name: Bank fresh brain BB-0100
    category: BankFreshBrain
    inputs: [ BR-100 ]
    donor: DNR-100
    fixed_hemisphere: HEMI-100
    frozen_cerebellum: [ CBL-100 ]
    frozen_olfactory_bulb: OB-100
    frozen_pineal_gland: PIN-100
    frozen_substantia_nigra: [ SN-100 ]
    frozen_pons: [ PONS-100 ]
    frozen_medulla: [ MED-100 ]
    frozen_cerebrum: [ CER-100 ]
    dna: DNA-100
    rna: RNA-100
    choroid_plexus: [ CP-100 ]
    pituitary: PIT-100
```

`BankFreshBrain` extends `tissue.Process`. The generic `inputs` slot (from `Process`) lists
the whole brain. The bank-specific typed output slots (`fixed_hemisphere`, `frozen_cerebrum`,
`dna`, `rna`, etc.) capture what was produced, each referencing samples defined in
the `samples` list. Note that `outputs` (the generic list) is not used here — the typed
slots are the canonical output record.

### DissectFrozenBrain

```yaml
  - id: DISS-100
    name: Dissect frozen cerebrum BB-0100
    category: DissectFrozenBrain
    inputs: [ CER-100 ]
    new_samples: [ SEC-100 ]
```

`DissectFrozenBrain` narrows `inputs` to `CNSSection` range (via `slot_usage`) and uses
`new_samples` for the output sections.

### CreateBrainSlide

```yaml
  - id: SLIDE-PROC-100
    name: NeuN-stain cerebrum block BB-0100
    category: CreateBrainSlide
    inputs: [ SEC-100 ]
    stain: NeuN
```

`CreateBrainSlide is_a SliceTissueToSlide is_a Process`. The `stain` slot uses the
`StainType` enum (NeuN, Iba1, GFAP).

### Derivation chain

Notice how the `derived_from` chain on the sample objects mirrors the process output:

```yaml
# Frozen cerebrum was derived from the whole brain
- { id: CER-100, ..., derived_from: BR-100 }
# Dissected section was derived from the cerebrum; its producing process is recorded
- { id: SEC-100, ..., derived_from: CER-100, produced_by: DISS-100 }
# Slide was derived from the section
- { id: SLIDE-100, ..., derived_from: SEC-100, produced_by: SLIDE-PROC-100 }
```

Both `derived_from` (direct lineage) and `produced_by` (the process event) can be set.

---

## Example 3: Computational provenance (`WorkflowDefinition` + `WorkflowRun` + `File`/`FileSet`)

**File:** `examples/brainbank-analysis-example.yaml`

This example shows the full computational chain: a raw dataset (FASTQ reads in a `FileSet`)
feeds a `WorkflowRun` that executes a `WorkflowDefinition` (nf-core/rnaseq) to produce a
counts dataset with a `File`.

### Files and FileSets

```yaml
files:
  - { id: FQ-R1, name: BB-0200 R1, category: File,
      uri: 's3://bb/BB-0200/raw/R1.fastq.gz', file_format: FASTQ,
      media_type: application/gzip, size_bytes: 4500000000,
      checksum: d41d8cd98f00b204e9800998ecf8427e, checksum_algorithm: md5 }
  - { id: FQ-R2, name: BB-0200 R2, category: File,
      uri: 's3://bb/BB-0200/raw/R2.fastq.gz', file_format: FASTQ, ... }

file_sets:
  - { id: FS-READS, name: BB-0200 paired reads, category: FileSet,
      files: [ FQ-R1, FQ-R2 ], role: reads }
```

- `File` holds the physical location (`uri`, which may be a DRS URI), format, and checksum.
- `FileSet` groups related files (e.g. R1/R2 paired reads) with a semantic `role`.
- Both `files` and `file_sets` are global collections in `BrainBank` — datasets reference
  them by id.

### Raw dataset (produced by an Assay)

```yaml
datasets:
  - id: DS-RAW
    name: BB-0200 hippocampus raw reads
    category: RNASeqDataset
    dataset_id: BB-0200-HIPP-RNA-RAW
    produced_by: ASY-200          # raw data: produced by the wet-lab assay
    file_sets: [ FS-READS ]
```

`produced_by` here points to the `Assay`, which in turn has `inputs: [SMP-200]`.
Full chain: `DS-RAW → produced_by → ASY-200 → inputs → SMP-200 → donor → DNR-200`.

### WorkflowDefinition (the recipe)

```yaml
workflow_definitions:
  - id: WFD-rnaseq-3.14.0
    name: nf-core/rnaseq
    category: WorkflowDefinition
    document_location: 'https://github.com/nf-core/rnaseq'
    version: 3.14.0
    engine: nextflow
    container_image: 'quay.io/nf-core/rnaseq:3.14.0'
```

`WorkflowDefinition is_a Protocol`. The inherited `document_location` is the pipeline
source URL; `version` is the release tag. A definition is a reusable recipe — it is shared
across multiple `WorkflowRun`s.

### WorkflowRun (the execution)

```yaml
analyses:
  - id: WFR-200
    name: nf-core/rnaseq run on BB-0200
    category: WorkflowRun
    protocol: WFD-rnaseq-3.14.0    # the definition this run executed
    engine_version: Nextflow 23.10.1
    input_datasets: [ DS-RAW ]
    output_datasets: [ DS-COUNTS ]
    status: completed
    compute_environment: SLURM HPC, nf-core 'base' profile
    parameters:
      - { id: PARAM-aligner, name: aligner, value: star_salmon }
      - { id: PARAM-genome,  name: genome,  value: GRCh38 }
```

- `WorkflowRun is_a Analysis is_a Activity`. It lives in the `analyses` collection.
- `protocol` (inherited from `core.Activity`, narrowed to `WorkflowDefinition`) links the
  run to its recipe — exactly as a `Process.protocol` links a wet-lab step to its SOP.
- `engine_version` captures the runtime (e.g. Nextflow version) separate from the pipeline
  version on the `WorkflowDefinition`.
- `parameters` are inlined `Parameter` objects (name+value pairs).

### Derived dataset (produced by a WorkflowRun)

```yaml
  - id: DS-COUNTS
    name: BB-0200 hippocampus gene counts
    category: RNASeqDataset
    dataset_id: BB-0200-HIPP-RNA-COUNTS
    produced_by: WFR-200          # derived data: produced by the workflow run
    genome_build: GRCh38
    quantification: raw_counts
    gene_model: GENCODE v44
    files: [ COUNTS ]
```

`produced_by` here ranges over `Activity`, which includes both `Assay` and `Analysis`/
`WorkflowRun`. Raw datasets point to their Assay; derived datasets point to their
Analysis/WorkflowRun. This is the full provenance spine.

---

## Patterns summary

| Pattern | How it's modeled |
|---|---|
| Polymorphic inlined list | `category:` slot on every object names the concrete class |
| Sample provenance | `Sample.derived_from` (parent specimen) + `Sample.produced_by` (the Process event) |
| Sample→Dataset link | `Dataset.produced_by → Assay → Assay.inputs → Sample[]` (no direct sample slot on Dataset) |
| Raw vs derived dataset | `produced_by` points to Assay (raw) or Analysis/WorkflowRun (derived) |
| Workflow definition vs run | `WorkflowDefinition is_a Protocol` (the recipe); `WorkflowRun is_a Analysis` (the execution); linked via `WorkflowRun.protocol → WorkflowDefinition` |
| Physical files | `File` + `FileSet` under `Dataset` via `files` / `file_sets` slots |
| Dates in polymorphic collections | Omit `performed_on`/`started_at`/`ended_at` in examples (linkml-validate quirk; schema is correct) |
