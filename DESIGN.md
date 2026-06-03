# Brain Bank LinkML Schema — Draft Design for Review

**Status:** draft for review — shape & spec first, details deliberately loose
**Repo (intended home):** `VA-NCPTSDBB-Bioinformatics/brainbank-hippo-schema`
**Builds on:** `VA-NCPTSDBB-Bioinformatics/tissue-db-linkml-schema` (existing `tissue_db.yaml` + `bank_brain_workflow.yaml`)
**Reference docs:** Doc 1 (Brain Bank LinkML Schema Design), Doc 2 (Hippo Migration & Extension)

---

## 0. What this document is (and isn't)

This is a **shape-first** proposal. Per your steer, it deliberately steps back from the
prescriptive machinery in Doc 1/Doc 2 (hippo ReferenceLoaders, `DomainModule`, w3id resolution,
bundle manifests, value-set materialization pipelines) and instead pins down:

1. the **conceptual model** — the nouns, how they relate, where the domain boundaries fall;
2. a small number of **cross-cutting modeling decisions** that determine everything downstream;
3. a **module inventory + dependency DAG** we can build in *plain LinkML today*;
4. **draft schema sketches** per module to make the shape concrete;
5. a **phased plan**, with an explicit "hippo-readiness seam" so nothing we do now has to be
   thrown away when/if we adopt the loader/`DomainModule` system later.

Everything here is plain LinkML. No hippo runtime dependency. We own our own base class for now.
Section 7 lists exactly what changes the day we decide to sit this on hippo — it's a small,
mechanical diff by design.

---

## 1. Stepping back: the conceptual model

Doc 1 names four domains — **Subjects, Tissue, Datasets, Pathology**. That's the right spine.
Your existing `tissue_db` already implements a strong chunk of it (Tissue + logistics + workflow),
just under different names and without the Datasets/Pathology arms. The job is to *generalize and
complete* what you have, not replace it.

The conceptual model, in one breath:

> A **Donor** (a `Person`) is the source of physical **Samples** (tissue/fluids), which are produced
> and transformed by **Processes** (banking, dissection, culture, extraction), stored in
> **Containers** at **Locations**. Samples are assayed to produce **Datasets**. Persons and Samples
> are characterized by **Pathology** assessments (*deferred — future work*). Controlled vocabulary
> (anatomy, species, disease, assay, cell type) comes from public ontologies.

The natural **dependency direction** (who-knows-about-whom) is a clean DAG, which is what lets us
avoid LinkML's circular-import problem *without* reifying every edge:

```
              core ───────────────────┐
              /   \                    │
        anatomy   person              │
              \   /                    │
            tissue ────────────────────┤
            │     │                    │
        dataset   │                    │
                  │                    │
              pathology                │
                  │                    │
              brainbank  ◄─────────────┘   (tree_root container — imports everything)
```

Read the arrows as "imports / may reference." Lower layers never reference upper layers. `tissue`
imports `person` + `anatomy`; `pathology` points *down* at `person` and `tissue`; `dataset` points
*down* at `tissue`. Nothing points back up. This is the single most important structural property —
it's why the schema stays modular. (There is no monolithic `value_sets` layer — controlled
vocabularies live in the module that owns them; see §2.5.)

### 1.1 Mapping from your existing `tissue_db`

| Existing (`tissue_db`)        | Proposed                                   | Note |
|---|---|---|
| `IdentifiedNamedThing` mixin  | `core.NamedThing` (abstract base)          | becomes the seam for hippo `Entity` later (§7) |
| `Case`                        | `person.Donor` (`is_a person.Person`)      | "Subject" retired; Donor = deceased tissue donor (§2.1, DECIDED) |
| `Cohort`                      | `person.Cohort`                            | unchanged |
| `Sample` / `SolidSample` / `LiquidSample` | `tissue.Sample` / `SolidSample` / `LiquidSample` | unchanged shape |
| `Anatomy` (FMA class)         | `anatomy.AnatomicalStructure` + `AnatomicalSite` enum | rebound to Uberon; FMA kept as xref (§2.4, §2.5) |
| `Container` / `Location`      | `tissue.Container` / `tissue.Location`     | unchanged |
| `Transaction` (abstract)      | `tissue.Process` (generic)                 | generalized; brain-bank specifics move to extension layer |
| `bank_brain_workflow.*`       | `brainbank` extension layer                | the *lab extension*, per Doc 1 §R8 |
| `SOP`                         | `core.Protocol`                            | unchanged |
| `Mass` / `Volume`             | `core.Mass` / `Volume` / `Concentration`   | unchanged + add concentration |
| (none)                        | `dataset.*`                                | **new** |
| (none)                        | `pathology.*`                              | **new** |

The big conceptual reframe is the last block of the table: your `bank_brain_workflow.yaml` — all
those `BankFreshBrain` / `BankDura` / `DissectFrozenBrain` `Transaction` subclasses — is exactly
what Doc 1/Doc 2 mean by "the brain bank deployment is itself a lab-style extension." So we keep the
**base `tissue` module generic** (a `Sample` has a `derived_from` parent and an optional producing
`Process`), and the rich, opinionated banking workflow lives in the `brainbank` layer on top. This
is the cleanest way to honor Doc 1 §R8 ("base modules must never assume they are the leaf consumer")
while not losing any of the modeling you've already done.

---

## 2. Cross-cutting decisions (the ones that matter)

These decisions shape every module. For each I give a recommendation and the trade-off. Items
flagged **[DECISION NEEDED]** are where your call genuinely changes the draft; **[DECIDED]** ones are
settled as we walk through the open questions.

### 2.1 People modeling — Person + Donor **[DECIDED]**

"Subject" is retired (the term is rightly being eschewed for people in science). Instead:

- **`Person`** is the base human entity (`person_id`, `species`, `sex`, `cohort`).
- **`Donor`** `is_a Person` — a deceased individual who donated tissue. Donor-only properties
  (`age_at_death`, `post_mortem_interval_hours`) live here, not on `Person`.

The module is named `person` (prefix `person:`). Tissue links to its source via `Sample.donor →
person:Donor` (tissue always comes from a deceased donor); pathology assessments target a
`person:Person` (covers either a living-record `Person` or a `Donor`). This replaces the old
`tissue_db:Case`. We can still add a separate `Accession`/intake entity later if intake needs its
own lifecycle, but it isn't needed for the prototype.

### 2.2 Relationship style — hybrid: refs down the DAG, reify only on concrete need **[DECIDED]**

Doc 1 §2.2/§2.3 mandates **everything** be a reified Biolink-style association in dedicated pair
modules. That's the right *endgame* for hippo (it breaks circular imports and lets edges carry
scientific metadata and hippo indexes). But for a plain-LinkML prototype it is a lot of ceremony,
and most of our edges run *down the DAG* where a plain reference has no circular-import problem. So:

- **Containment / down-DAG edges → plain references.** `tissue.Sample.donor → person.Donor`,
  `pathology.*.person → person.Person`, etc. These follow the DAG, never cycle, and need no metadata
  on the edge. Keep them as slots.
- **Reify only on a concrete need** — when an edge carries method/evidence/assertion metadata, is a
  genuine many-to-many we must query from both ends, or reifying is the only way to dodge an unwanted
  dependency. We will *not* pre-create association classes speculatively.
- **The sample↔dataset many-to-many is reified through the process node, not a new class.** Every
  dataset is produced by some process, so `dataset.Assay` (the process) is the n-ary node: it holds
  `inputs → tissue.Sample[]` and a `Dataset` points to it via `produced_by`. That single node carries
  the M:N relation *and* its production metadata — no `SampleDatasetAssociation` needed. (A `Dataset`
  therefore has **no** `derived_from` sample slot; provenance is `Dataset → Assay → Sample[]`.)
- The abstract `core.Association` base stays in `core` (cheap, future-proof) but has **no concrete
  subclasses yet**. If a real metadata-bearing edge appears (e.g. a pathology assertion needing
  evidence/method distinct from the assessment record), we add that one class then — in an
  `associations.yaml`, splitting to per-pair modules à la Doc 1 §2.3 only if imports/modularity force
  it. The DAG means we likely won't need to for a while.

This gets us Doc 1's robustness at a fraction of the file count, and the migration to full per-pair
reification later is additive (new modules), not a rewrite.

### 2.3 Process / derivation modeling

Your `Transaction` hierarchy is genuinely good modeling — it captures the SOP-driven wet-lab
workflow that *produces* samples. Doc 1 mostly reduces this to a `derives_from` predicate, which
loses the event/protocol richness. I'd keep both ideas, layered:

- **Base `tissue` module:** a generic, minimal derivation backbone:
  - `Sample.derived_from → Sample` (the parent specimen; you already have `parent`), and
  - `Sample.produced_by → Process` (optional), where
  - `Process` (`is_a NamedThing`) has `inputs → Sample[]`, `outputs → Sample[]`, `protocol →
    Protocol`, `performed_on` (date). This is essentially a clean n-ary reified
    "transformation event" — it unifies your `Transaction` idea with the association idea.
- **`brainbank` extension layer:** the concrete, opinionated processes —
  `BankFreshBrain`, `BankDura`, `DissectFrozenBrain`, `SliceTissueToSlide`, etc. become
  `is_a tissue.Process` (replacing `is_a Transaction`), with their specific typed output slots.
  All your existing workflow modeling ports over almost verbatim, just re-parented.

Net: the base stays domain-agnostic; the brain-bank workflow stays as rich as it is today, in the
layer where it belongs.

### 2.4 Ontology binding — Uberon, dynamic enums + thin term classes **[DECIDED]**

Two sub-decisions, both settled:

1. **Anatomy ontology: Uberon.** Replaces tissue_db's FMA binding. Uberon is the cross-species OBO
   standard with clean is_a/part_of structure and co-references CL/MONDO. `AnatomicalSite` binds to
   Uberon.
2. **Terms: dynamic enums by default, thin term classes where needed.** Most ontology-valued fields
   (`species`, `disease`, `assay_type`, `cell_type`) are plain **dynamic enums** (`reachable_from`) —
   a slot just holds a CURIE. **Anatomy gets a thin class** because we need local term metadata and
   cross-references: `anatomy.AnatomicalStructure` carries the bound Uberon term (`ontology_term`,
   ranged on the `AnatomicalSite` enum) plus `fma_xref` for the case you raised — recording an FMA
   term when Uberon isn't specific enough. `tissue.Sample.anatomical_site` ranges over this class,
   not the bare enum. Other vocabularies can be promoted to a term class later by the same criterion
   (needs local metadata / xrefs) without disturbing consumers.

For the prototype we will **not** build the materialize-and-pin pipeline (Doc 1 §4 / Doc 2
ReferenceLoaders). We author `reachable_from` as *intent* and rely on LinkML validation as-is.
Pinning/materialization is a Phase-6 / hippo concern (§7).

### 2.5 Value-set placement — colocated, not a monolith **[DECIDED]**

Doc 1 puts every controlled vocabulary in one `value_sets.yaml`. We **don't** — that monolith only
earns its keep in the hippo endgame, where value sets become *materialized reference data* shipped by
a versioned loader, and even there Doc 2 describes it as *per-ontology* loaders, not one file. In
plain LinkML an enum is just a schema element, and almost every one of ours is owned by a single
module. So **each enum lives in the module that uses it**:

| Vocab | Owner module |
|---|---|
| `MassUnit` / `VolumeUnit` / `ConcentrationUnit` | `core` |
| `Species` | `person` |
| `AnatomicalSite` enum + `AnatomicalStructure` class | `anatomy` (dedicated, because it needs a term class) |
| `SolidSampleFormat` / `LiquidSampleFormat` / `ContainerType` / `LocationType` / `StainType` / `CellType` | `tissue` |
| `AssayType` | `dataset` |
| `Disease` | `pathology` |

A vocabulary gets *promoted to its own module* (like `anatomy`) only when it needs a thin term class
and/or is shared widely. This strengthens recipe-modularity (R1: each module compiles with only its
declared imports) and does not foreclose the hippo "value-sets-as-reference-data" path later
(materialization can extract per-ontology snapshots regardless of authoring file).

### 2.6 Dataset modeling — typed subclasses per assay family **[DECIDED]**

Four assay families are in scope for the prototype — **transcriptomics, genomics, epigenomics,
imaging/histology** — and we model them with **typed subclasses now** (not a generic blob). To avoid
duplication, typing is organized by *technology base*, with one leaf per modality:

- **Assays** (process nodes): `Assay` → `SequencingAssay` (platform, read_length, paired_end) →
  {`RNASeqAssay`, `GenomeSequencingAssay`, `ATACSeqAssay`}; `Assay` → `ArrayAssay` (array_platform) →
  {`GenotypingAssay`, `MethylationArrayAssay`}; `Assay` → `ImagingAssay` (stain, magnification,
  scanner).
- **Datasets** (artifacts): `Dataset` → `SequenceDataset` (genome_build, n_reads) → {`RNASeqDataset`,
  `GenomeVariantDataset`, `ATACSeqDataset`}; `Dataset` → `ArrayDataset` (array_platform) →
  {`GenotypingDataset`, `MethylationDataset`}; `Dataset` → `ImageDataset`.
- `ImagingAssay`/`ImageDataset` reuse `tissue.StainType`; new local enums (`SequencingPlatform`,
  `ArrayPlatform`, `GenomeBuild`, `RNAQuantification`, `SequencingStrategy`, `ImageFormat`) live in
  `dataset`. This is a first cut for review — prune/rename leaves freely.

### 2.7 Pathology — deferred (future work) **[DECIDED]**

Pathology is **tabled** for the prototype: we don't yet know which staging scales/measures the bank
needs to store. The module is kept only as a **provisional placeholder** to preserve the four-domain
shape and the down-DAG wiring, and to record the chosen direction for later: when scope is defined we
model a **generic `Measurement` + `MeasureType` enum** (one class, controlled measure names, a
value), *not* typed subclasses per scale. The placeholder ships `Assessment`/`Measurement`/`Diagnosis`
with an empty `MeasureType` stub — none of it is final. Building it out is a later phase.

---

## 3. Module inventory

Plain-LinkML, one concern per file. (Doc 1's loader/`default_prefix`=loader-name rule is a hippo
concern; for now we use ordinary `default_prefix` per file and ordinary relative `imports:`, and
**imported classes are referenced by their bare name** — e.g. `is_a: NamedThing`, `range: Donor` —
not by `module:Class` FQN. The FQN form is the hippo convention and is deferred to §7.)

| File | `default_prefix` | Contains | Imports |
|---|---|---|---|
| `core.yaml` | `core` | `NamedThing` base, `Association` base, `Protocol`, quantity types (`Mass`/`Volume`/`Concentration`), unit enums, shared mixins, prefixes | `linkml:types` |
| `anatomy.yaml` | `anatomy` | `AnatomicalStructure` term class + `AnatomicalSite` Uberon enum (+ FMA xref) | `core` |
| `person.yaml` | `person` | `Person`, `Donor` (`is_a Person`), `Cohort`, `Species` enum | `core` |
| `tissue.yaml` | `tissue` | `Sample`/`SolidSample`/`LiquidSample`, `Container`, `Location`, `Process`; format/container/location/stain/cell enums | `core`, `person`, `anatomy` |
| `dataset.yaml` | `dataset` | `Dataset`/`Assay` + typed subclasses per family (RNASeq/Genome/ATAC/Genotyping/Methylation/Image); platform/format enums | `core`, `tissue` |
| `pathology.yaml` *(provisional — future work, §2.7)* | `pathology` | placeholder `Assessment`/`Measurement`/`Diagnosis`, `Disease` enum, `MeasureType` stub | `core`, `person`, `tissue` |
| `associations.yaml` *(optional, lazy)* | `associations` | concrete reified edges as they're needed (§2.2) | `core` + endpoints |
| `brainbank.yaml` | `brainbank` | `BrainBank` `tree_root` container; the lab **extension layer** (ported `bank_brain_workflow` processes); subsets/profiles | all |

`brainbank.yaml` plays two roles in the prototype that Doc 1 eventually separates: it's both the
`tree_root` ingest container *and* the lab extension layer. When we adopt hippo, the extension layer
becomes a separate user-schema repo and the container stays. Fine to keep together for now.

---

## 4. Draft schema sketches

The **authoritative drafts are the standalone files in `schema/`** — open those in the modeler app;
they stay in sync with the decisions above. Below I keep only `core.yaml` inline as an anchor for the
base-class shape; for `anatomy`, `person`, `tissue`, `dataset`, `pathology`, and `brainbank` see the
corresponding `schema/*.yaml`. (Module → file: `anatomy.yaml`, `person.yaml`, `tissue.yaml`,
`dataset.yaml`, `pathology.yaml`, `brainbank.yaml`.)

### 4.1 `core.yaml`

```yaml
id: https://w3id.org/VA-NCPTSDBB/brainbank/core
name: core
prefixes:
  linkml: https://w3id.org/linkml/
  brainbank: https://w3id.org/VA-NCPTSDBB/brainbank/
  uberon: http://purl.obolibrary.org/obo/UBERON_
  mondo: http://purl.obolibrary.org/obo/MONDO_
  ncbitaxon: http://purl.obolibrary.org/obo/NCBITaxon_
  cl: http://purl.obolibrary.org/obo/CL_
  obi: http://purl.obolibrary.org/obo/OBI_
  ro: http://purl.obolibrary.org/obo/RO_
default_prefix: core
default_range: string
imports:
  - linkml:types

classes:
  NamedThing:
    abstract: true
    description: >-
      Local base for all entities. TEMPORARY: stands in for hippo's runtime-provided
      Entity (see DESIGN.md §7). When we adopt hippo, classes switch to `is_a: Entity`
      and the id/name/description managed here are surrendered to the runtime.
    attributes:
      id:
        identifier: true
        range: uriorcurie
        description: Technical identifier (UUID/CURIE). Becomes hippo-managed later.
      name:
        required: true
      description: {}

  Association:
    abstract: true
    description: Reified, Biolink-style relationship carrying scientific metadata only.
    is_a: NamedThing
    attributes:
      subject:  { range: NamedThing, required: true }
      predicate: { range: uriorcurie }          # e.g. RO 'derives from'
      object:   { range: NamedThing, required: true }
      # scientific metadata (NOT audit — no actor/timestamp of the DB write)
      evidence_type: {}
      method: {}
      asserted_on: { range: date }

  Protocol:
    is_a: NamedThing
    description: An SOP or method document. (was tissue_db:SOP)
    attributes:
      document_location: { required: true, description: URL/path to the SOP }
      version: { required: true }

  Quantity:
    abstract: true
    attributes:
      value: { range: float }
  Mass:
    is_a: Quantity
    attributes: { unit: { range: MassUnit } }
  Volume:
    is_a: Quantity
    attributes: { unit: { range: VolumeUnit } }
  Concentration:
    is_a: Quantity
    attributes: { unit: { range: ConcentrationUnit } }

enums:
  MassUnit:        { permissible_values: { ng: {}, ug: {}, mg: {}, g: {}, kg: {} } }
  VolumeUnit:      { permissible_values: { nl: {}, ul: {}, ml: {}, l: {} } }
  ConcentrationUnit: { permissible_values: { ng_ul: {}, ug_ul: {}, mg_ml: {} } }
```

---

## 5. Open questions for your review

1. ~~**Subject vs Case** (§2.1)~~ — **RESOLVED**: `Person` base + `Donor` subclass (§2.1).
2. ~~**Anatomy ontology** (§2.4)~~ — **RESOLVED**: Uberon (§2.4).
3. ~~**Ontology terms** (§2.4)~~ — **RESOLVED**: dynamic enums + thin term classes where needed;
   anatomy gets `AnatomicalStructure` with FMA xref (§2.4). Value sets colocated per module, no
   monolith (§2.5).
4. ~~**Reification depth** (§2.2)~~ — **RESOLVED**: hybrid; reify only on concrete need. Sample↔Dataset
   M:N is reified through the `Assay` process node, not a separate class; no concrete `Association`
   subclasses yet (§2.2).
5. ~~**Datasets scope**~~ — **RESOLVED**: all four families (transcriptomics, genomics, epigenomics,
   imaging) with typed subclasses now (§2.6).
6. ~~**Pathology scope**~~ — **RESOLVED**: deferred to future work; provisional placeholder kept;
   generic `Measurement` + `MeasureType` enum chosen as the eventual direction (§2.7).
7. ~~**Namespace**~~ — **RESOLVED**: `https://w3id.org/VA-NCPTSDBB/brainbank/<module>` (already used by
   all modules). Follow-up: register the `w3id.org/VA-NCPTSDBB/*` redirect at distribution time.

**All seven open questions are now resolved.** Remaining items are scaffolding/build, not design.

---

## 6. Phased plan

- **Phase 0 — scaffold.** New repo layout (`schema/`, `examples/`, `docs/`, `project/` for generated
  artifacts), `README`, this `DESIGN.md`, a LinkML `gen-project`/CI workflow (lint + validate +
  `gen-pydantic` smoke test). Decide namespace (Q7).
- **Phase 1 — `core` + `anatomy` + `person`.** Base class, quantities/units, `Association` base,
  `Protocol`; the `anatomy` term class + Uberon enum; `Person`/`Donor`/`Cohort` + `Species`.
- **Phase 2 — `tissue`.** Port/refactor existing `tissue_db` (rename `Case`→`person.Donor`,
  `Transaction`→`Process`, `SOP`→`core.Protocol`); colocate the format/container/location/stain/cell
  enums. Validate against a small example.
- **Phase 3 — `dataset`.** Typed assay-family subclasses (§2.6).
- **Phase 4 — `brainbank` container + examples.** `tree_root`, example data bundle, end-to-end
  `linkml-validate`.
- **Phase 5 — port the brain-bank workflow.** Re-home `bank_brain_workflow` processes as
  `is_a tissue:Process` in the `brainbank` extension layer. This is the real test of the
  base/extension split.
- **Phase 6 — `pathology` build-out (future work).** Once scope is known: flesh out the provisional
  placeholder per §2.7 (generic `Measurement` + populated `MeasureType`).
- **Phase 7 (deferred) — hippo-readiness.** Only when you decide to adopt hippo: apply §7.

Phases 1–5 are all plain LinkML and independently useful — you get a working, validatable schema and
generated Pydantic/SDK without ever touching hippo. Phase 6 (pathology) slots in whenever its scope
firms up.

---

## 7. The hippo-readiness seam (what changes later)

We're deliberately *not* adopting the loader/`DomainModule`/materialization machinery now. To keep
that cheap later, everything hippo-specific is isolated behind a small, well-marked seam. When/if we
adopt hippo, the diff is mechanical:

1. **Drop our `core.NamedThing`**; every entity switches to `is_a: Entity` (hippo runtime base).
   Remove the `id`/`name`/`description` we manage — hippo owns `id`, timestamps, supersession,
   provenance. (Our `name`/`description` may move to hippo-provided slots.)
2. **Business identifiers** (`person_id`, `sample_id`, `dataset_id`) stay, gain
   `annotations: { hippo_index: true }`; free-text fields gain `hippo_search: fts5`.
3. **`default_prefix` = loader name** per module; cross-module refs become FQN (`person:Person`),
   and modules ship as `SchemaPackage`/`ReferenceLoader`s.
4. **Value sets** get the materialize-and-pin pipeline (`vskit expand` against a pinned ontology +
   a CEL/WriteValidator membership check). Until then, `reachable_from` is documentation/intent.
5. **Associations** (if/when any concrete ones exist) can split into per-pair modules
   (`person-tissue.yaml`, …) with `loader_depends_on` on both endpoints — additive, no rewrite.
6. **Versioning/bundles/migration** (Doc 1 §5, Doc 2 §2A) layer on top; nothing in Phases 1–5
   blocks them.

None of Phases 1–5 produce anything that has to be undone — they just get annotated and re-homed.
That's the whole point of prototyping in plain LinkML first.

---

## 8. Relocation & local verification (Phase 0 close-out)

The scaffold was authored in a holding area (a subdirectory of `tissue-db-linkml-schema`) because
the target repo was out of scope at the time, and `linkml` could not be installed there to verify
it. It has now been relocated to the root of `brainbank-hippo-schema` and verified locally against
`linkml 1.11.1`. The full check is `make all` (lint + validate + gen-pydantic); CI runs the same
three steps. Three small fixes were needed to get the toolchain green — none touch a design
decision:

1. **`default_range: string` is now declared in every module, not just `core`.** LinkML resolves a
   slot's range using the `default_range` of the schema being processed as the root; it does **not**
   inherit through `imports`. With it only in `core`, linting/compiling any other module as the root
   reported every range-less slot (`name`, `description`, `person_id`, …) as
   `range 'None' is not defined` (`no_undeclared_ranges`, error-level). Declaring `default_range:
   string` per module clears all of them.

2. **Dropped the `ifabsent: string(NCBITaxon:9606)` default on `person.Person.species`.**
   `gen-pydantic` rejects a `string(...)` ifabsent on an enum-ranged slot, and `Species` is a
   *dynamic* (`reachable_from`) enum with no static permissible value to materialize a default from.
   The "defaults to Homo sapiens" intent is retained in the slot description. (This is consistent
   with §2.4: dynamic enums are intent-only in the prototype — no ontology is fetched/materialized.)

3. **Lint runs with `--ignore-warnings` (CI + Makefile).** Errors still fail the build; the
   remaining findings are all warning-level and intentional for the prototype: human-readable
   permissible values (`Falcon Tube`, `GRCh38`, …) flagged by `standard_naming`; lowercase OBO
   prefixes (`uberon`, `mondo`, …) per §4.1 flagged by `canonical_prefixes`; and not-yet-written
   slot descriptions flagged by `recommended`. None warrant churning the design.

Verified green: `linkml-lint --ignore-warnings schema/*.yaml`, `gen-pydantic schema/brainbank.yaml`
(883-line Pydantic model), and `linkml-validate -s schema/brainbank.yaml -C BrainBank
examples/brainbank-example.yaml` ("No issues found"). The `category` `designates_type` slot and the
polymorphic inlined collections in the `BrainBank` tree_root validate as designed. Phases 5–6
(workflow port, pathology build-out) are unchanged and still ahead.

---

## 9. Phase 5 — brain-bank workflow port (lab extension layer)

`tissue-db-linkml-schema/bank_brain_workflow.yaml` has been ported into the `brainbank` extension
layer, re-parented onto the generic tissue base (the real test of the base/extension split, §2.3).
Two families came over:

- **Materials** — the brain-bank-specific specimen subclasses become `is_a SolidSample` /
  `LiquidSample`, with `CNSSection` (`is_a SolidSample`) as the base for the named brain regions
  (`Cerebellum`, `Cerebrum`, `Hemisphere`, `Medulla`, `OlfactoryBulb`, `PinealGland`, `Pons`,
  `SubstantiaNigra`, `ChoroidPlexus`, `Pituitary`, `SpinalCord`, …). Fluids/extracts (`CSF`,
  `Blood`, `Cells`, `RNA`, `DNA`) become `is_a LiquidSample`.
- **Processes** — every `Transaction` subclass becomes `is_a Process`. The old `Transaction.sop`
  is now the inherited `Process.protocol`; the old `from_samples` slot is the inherited
  `Process.inputs`, narrowed via `slot_usage` where a process consumed a specific material
  (e.g. `BlockDura.inputs → Dura`, `DissectFrozenBrain.inputs → CNSSection`). Each process keeps its
  specific typed output slots (e.g. `BankFreshBrain.frozen_cerebellum → Cerebellum[]`).

Because this is the first time the workflow was actually compiled (linkml wouldn't install in the
authoring session), the port surfaced and fixed several **latent bugs** the old file carried:

- `BankFreshBrain.frozen_pineal_gland` was ranged on `OlfactoryBulb` (copy-paste) → corrected to
  `PinealGland`.
- `BankFreshBrain.frozen_cerebrum` was ranged on an **undefined class `Coronal`** → corrected to
  `Cerebrum`.
- `RNA`/`DNA` referenced a `Concentration` type that `tissue_db` never defined → now `core.Concentration`.
- Duplicate `CellType` / `StainType` enums and an empty-rule (`rules: [{}]`) artifact were dropped;
  `CellType` (dynamic CL enum) and `StainType` are reused from `tissue`, not redefined.
- `BankSkin`'s dangling `slots: [culture_media]` reference (no such top-level slot existed) is now a
  plain `culture_media` attribute. The leftover `tree_root: true` on `PinealGland` was removed
  (`BrainBank` is the only tree root).

`examples/brainbank-workflow-example.yaml` exercises the chain end to end —
`BankFreshBrain` → frozen regions + DNA/RNA, then `DissectFrozenBrain` and `CreateBrainSlide` —
and validates clean, as does `gen-pydantic` (now ~1900 lines) and lint.

**Known tooling quirk (not a schema defect):** `linkml-validate` 1.11.x does not serialize `date`
values to strings before JSON-Schema validation **when the containing slot is polymorphic** (an
`anyOf` over subclasses, as `processes` is). A date anywhere in such a collection makes every branch
fail with "not valid under any of the given schemas". The schema fully supports `Process.performed_on`;
the workflow example simply leaves it unpopulated so validation/CI stay green. Revisit if/when the
validator is fixed upstream.
