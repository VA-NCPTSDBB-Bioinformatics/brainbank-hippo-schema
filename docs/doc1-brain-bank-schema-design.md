# Document 1 of 2 — Brain Bank LinkML Schema Design

**Audience:** autonomous implementation agent stack
**Companion:** Document 2 — Hippo Migration & Extension-Hook Design (runtime delivery, versioned dependencies, migrations)
**Status:** architecture decided; implementation not started
**Owner:** Adam Labadorf (Director of Bioinformatics, VA National Center for PTSD Brain Bank; BU Bioinformatics)
**Org / namespace:** `VA-NCPTSD-BB`
**Deployment runtime:** `BU-Neuromics/hippo` (see Doc 2)
**Authoring tool:** `adamlabadorf/linkml-modeler-app`

---

## 0. Scope and how to use this document

This document covers **the schema itself**: modeling decisions, module decomposition, ontology binding, conventions, and the versioning *contract*. It deliberately does **not** specify the runtime, dependency-resolution mechanics, or migration logic — those are Doc 2, which targets hippo's ReferenceLoader framework. Where a schema decision implies a runtime behavior, this doc states the decision and cross-references Doc 2.

Sections 1–6 are **decisions**; §7 is **requirements**; §8 lists **open parameters** (defaults given → use and record). `<LIKE_THIS>` = parameter to confirm.

**Framing:** the schema *is the application* — hippo generates a typed SDK, REST API, provenanced store, and validation pipeline from it. Model with hippo's runtime semantics in mind (§3), and **treat lab extensions as the norm**: the base modules must never assume they are the leaf consumer, because the brain bank's own deployment is itself a lab-style extension of these base modules (the reference test of their extensibility — see Doc 2 §2).

---

## 1. Context and goals

Canonical LinkML model for a brain bank, spanning four initial domains: **Subjects** (donors), **Tissue** (specimens from subjects), **Datasets** (assay outputs from tissue), **Pathology** (assessments of subjects and tissue). All map to public ontologies (Uberon, MONDO, NCBITaxon, CL, OBI/EDAM); local ontologies may come later.

Goals: (1) **interconnection without brittle circular imports**; (2) **ship as recipes** a lab can select and extend; (3) **reproducible, FAIR, validatable** — pinned ontology versions, provenance (supplied by hippo at runtime, §3).

---

## 2. Core architectural decisions

### 2.1 Layered, multi-file schema; subsets only for profiles
Imports for source modularity; subsets reserved for consumption profiles (`minimal`, `submission_required`, `clinical`). Subsets are generator-filter tags — not a decomposition tool.

### 2.2 Reified, Biolink-style associations (DECIDED, reinforced by hippo)
Relationships are reified as association classes carrying **scientific** metadata (method, evidence, assertion date) — never record audit (hippo's provenance log owns that, §3.1). Rationale: breaks circular imports, keeps entity modules independently importable, and is the robust way to attach metadata to relationships given that hippo's edge-property support is incomplete (Doc 2). Each reified association becomes a hippo entity type (`is_a: core.Association`, which is `is_a: Entity`); its `subject`/`object` reference slots carry `hippo_index: true`.

### 2.3 Associations live in dedicated pair modules — NOT owned by an entity module (CORRECTED)
A reified association between `A` and `B` inherently depends on both (its `subject`/`object` range over them). Placing it inside `A` would make `A` non-standalone — it would transitively require `B`, breaking recipe modularity and tangling the version graph. **The only placement that keeps both entity modules pure is a separate module depending on both.** Therefore:

- All associations between a pair live in a dedicated module named by canonical (alphabetical) ordering: `subject-tissue.yaml`, `tissue-dataset.yaml`, `subject-pathology.yaml`, `tissue-pathology.yaml`. Semantic direction lives in the association classes' `subject`/`object` slots, not the filename.
- The abstract `Association` base + scientific-metadata mixins live in the `core` module (`core.Association`, `is_a: Entity`).

The file count is the number of *populated* edges, not C(n,2) — sparse (~4 here), since e.g. subject–dataset routes through tissue. A deployment activates an association module only when both its endpoint modules are present; association modules are pure leaves (nothing imports them), so they are always safe to omit. This placement is also what lets the association module pin *both* endpoint versions explicitly (Doc 2 §2).

### 2.4 Module inventory and namespaces
Each module ships as a hippo ReferenceLoader (Doc 2 §2), and **a loader's `default_prefix` MUST equal its loader name** — so every module is namespaced under `<name>:` and there is no root-unqualified base layer. Cross-module references use FQNs (`range: subject.Subject`, `range: core.Association`). The base identity class is the runtime-provided `Entity` (from `hippo_core`) — subclass it directly (`is_a: Entity`); do **not** hand-roll a `NamedThing` root. `core` contributes `core.Association` + evidence/method mixins (each `is_a: Entity`).

| File | `default_prefix` (= loader name) | Contains | Imports | Ships as (Doc 2) |
|---|---|---|---|---|
| `core.yaml` | `core` | abstract `core.Association` (`is_a: Entity`), evidence/method mixins, prefixes, mapping conventions | `linkml:types` | `brainbank-core` loader (no-op `load()`) |
| `value_sets.yaml` | `value_sets` | ontology-bound dynamic enums (§4) + the terms as reference data | `core` | `brainbank-valuesets` loader (data-bearing) |
| `subject.yaml` | `subject` | Subject entities (`is_a: Entity`) | `core`, `value_sets` | `brainbank-subject` loader (no-op `load()`) |
| `tissue.yaml` | `tissue` | Tissue entities | `core`, `value_sets`, `subject` | `brainbank-tissue` loader |
| `dataset.yaml` | `dataset` | Dataset entities | `core`, `value_sets`, `tissue` | `brainbank-dataset` loader |
| `pathology.yaml` | `pathology` | Pathology entities | `core`, `value_sets`, `subject`, `tissue` | `brainbank-pathology` loader |
| `subject-tissue.yaml`, `tissue-dataset.yaml`, … | per pair | reified pair associations (`is_a: core.Association`) | `core` + both endpoints | association loaders (`loader_depends_on` both) |
| `brainbank.yaml` | `brainbank` | `tree_root` container, subsets/profiles | all | — |
| `<lab>.yaml` | lab | lab extension (lab's own repo), top-precedence user layer | selected modules | user-schema layer |

The runtime `Entity` class (from `hippo_core`) is the shared base; reference it unqualified, reference module classes by FQN.

---

## 3. Hippo runtime constraints on modeling (summary; full detail in Doc 2)

### 3.1 Do NOT model system/audit fields
Hippo manages `id` (UUID), `is_available`, `superseded_by`, `created_at`/`updated_at`, `schema_version`, `actor_id`, plus an append-only PROV-O provenance log (operation, timestamp, actor, previous-state hash, full snapshot) and supersession. **No hand-rolled audit/provenance slots.** The base identity class is the runtime-provided `Entity` — subclass it (`is_a: Entity`), don't redefine a root. Associations carry only scientific metadata. Declare a *business* identifier slot per entity (`subject_id`, etc.) with `annotations: { hippo_index: true }`; route upstream LIMS IDs (STARLIMS/HALO/Donor DB) through hippo's external-ID subsystem, not ad-hoc slots.

### 3.2 Apply hippo annotations during authoring
Under `annotations:` on attributes (validated by `hippo_ext`; unknown `hippo_*` keys hard-fail): `hippo_index`, `hippo_index_partial`, `hippo_search` (`fts`/`fts5`/`embedding`), `hippo_unique`, `hippo_immutable`, `hippo_computed`, `hippo_append_only`, and `hippo_accessor` (overrides the pluralized tree-root bundle key, e.g. `Process` → `processes`). Apply `hippo_index: true` to business identifiers and every association `subject`/`object`; `hippo_search: fts5` to free-text fields.

### 3.3 Container = hippo bundle
`brainbank.yaml` `tree_root` with pluralized `inlined_as_list` slots is exactly hippo's tree-root ingest bundle format. The schema is merged three-layer at runtime (user > reference loaders > `hippo_core`/`hippo_ext`); validation runs against that merged result (Doc 2).

### 3.4 `is_a`/`mixins`/`slot_usage` are the extension contract
Labs extend by subclassing and `slot_usage`, never by editing base files. The user layer wins on merge, so extensions override cleanly.

---

## 4. Ontology value binding and dynamic enums

Two separate bindings, kept apart: **element mapping** (model↔ontology: `exact_mappings`, `meaning:`, `class_uri`/`slot_uri`; lives in `core`/on elements) vs **value binding** (data↔ontology; lives in `value_sets.yaml`).

Define ontology-valued fields as dynamic enums (`reachable_from`, LinkML ≥ 1.3). **Critical:** dynamic enums are *not enforced by default* (LinkML docs: too permissive). Therefore **materialize-and-pin**: author `reachable_from` as intent; at build time `vskit expand` against a **pinned** ontology version into a static snapshot (the enforcement artifact, committed + version recorded); enforce at runtime via a hippo CEL validator / `WriteValidator` membership check (Doc 2). Use `uriorcurie`+`pattern` (+ a CEL check) for huge ontologies where only shape matters.

---

## 5. Versioning contract (mechanics in Doc 2)

Per-module SemVer, with schema-specific definitions:
- **patch** — descriptions, comments, mappings, annotations (no data-shape impact).
- **minor** — additive/backward-compatible: new optional slot/class, widened range, new permissible value.
- **major** — anything that can invalidate previously-valid data: remove/rename slot or class, optional→required, narrowed range, tightened pattern, removed permissible value. **Re-materializing a value set against a newer ontology is data-affecting → treat as a breaking change.**

**Coherent superseding bundles, not per-lab version mixing.** A *bundle* is a published manifest pinning one coherent `(module → version, + ontology snapshot)` set, CI-validated as a merged closure. Newer bundles supersede older ones for the general case; a deployment moves bundle-to-bundle as a unit. Within any one deployment there is exactly one version of each module (LinkML merges by element name — two versions of `Tissue` would collide). **Immutable published version URIs are retained forever** so historical deployments (and audits) remain reproducible; "supersede" moves the *recommended* coordinate, it never overwrites an old one. Dependency-resolution and the migration path between bundles are Doc 2.

---

## 6. Distribution (publication layer; runtime vendoring in Doc 2)

Imports use **abstract versioned URIs** (`https://w3id.org/VA-NCPTSD-BB/brainbank/<module>/<VERSION>`) resolved via importmap/w3id — never branch-mutable raw URLs; pin to immutable tags/SHAs if a physical URL is unavoidable. Publish per-module YAML + materialized value sets + a `--mergeimports` closure to versioned GitHub Pages paths under `VA-NCPTSD-BB.github.io`; register a w3id wildcard redirect (`w3id.org/VA-NCPTSD-BB/brainbank/*` → Pages). Monorepo `VA-NCPTSD-BB/brainbank-schema`; lab extensions in separate lab-owned repos. (Runtime consumes a pinned local copy via hippo, not network resolution — Doc 2.)

---

## 7. Hard requirements (schema)

- **R1.** Entity modules MUST compile/validate with only their declared imports (recipe modularity is testable).
- **R2.** No cross-module slot ranges except through reified `Association` subclasses, which live in dedicated pair modules (§2.3); cross-module ranges use FQNs.
- **R3.** No system/audit fields in the schema (§3.1); associations carry scientific metadata only.
- **R4.** Ontology value sets MUST be materialized against a pinned ontology version; CI fails on unpinned references. Runtime membership enforced via hippo CEL/`WriteValidator` (Doc 2).
- **R5.** Each entity declares a business identifier slot; upstream LIMS IDs use hippo's external-ID subsystem.
- **R6.** Hippo annotations applied per §3.2, including `hippo_index: true` on every association reference slot.
- **R7.** `imports:` use abstract versioned URIs; prefixes centralized in `core`, bioregistry-aligned, linter-enforced.
- **R8.** Base files are read-only to labs; extend via `is_a`/`slot_usage` only. Base modules MUST NOT assume they are the leaf consumer.
- **R9.** SemVer per §5; PR titles descriptive (release changelog).

---

## 8. Open parameters

- **`<ORG>` = `VA-NCPTSD-BB`** — confirm this is also the w3id segment and GitHub org/Pages host.
- `<VERSION>` scheme — coherent superseding **bundles** (§5).
- Business-identifier vs hippo `external_id` strategy (§3.1) — confirm against hippo's schema parser whether multiple `identifier: true` across an `is_a` chain is intended.
- Exact ontology roots + `relationship_types` per value set (§4) — confirm with a domain ontologist (Uberon root; include `BFO:0000050` part-of with `subClassOf`?).
- Predicate CURIEs for associations (RO "derives from", etc.) — confirm against the Relation Ontology.
- Ontology backend for `vskit`/runtime checks — default local **semsql SQLite** (reproducible, offline CI).
- Pinned ontology versions for the first bundle.

---

## 9. References (verified June 2026)
- LinkML enums (dynamic enums; "too permissive"; `vskit`): https://linkml.io/linkml/schemas/enums.html
- LinkML ontology-as-values howto: https://linkml.io/linkml/howtos/ontologies-as-values.html
- LinkML imports (`--mergeimports`): https://linkml.io/linkml/schemas/imports.html
- LinkML release management / copier: https://linkml.io/linkml/developers/manage-releases.html
- DocGenerator dynamic-enum bug: https://github.com/linkml/linkml/issues/3242
- Validator import re-resolution: https://github.com/linkml/linkml/issues/3349
- OAK / `vskit`: https://github.com/INCATools/ontology-access-kit
- w3id registration: https://github.com/perma-id/w3id.org
- Hippo (runtime; see Doc 2 for full refs): https://github.com/BU-Neuromics/hippo
