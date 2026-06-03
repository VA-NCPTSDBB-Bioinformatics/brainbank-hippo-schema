# Changelog

All notable changes to `brainbank-hippo-schema` are documented in this file.

Format follows [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).
Versioning follows [Semantic Versioning](https://semver.org/).

> **Policy:** every PR that changes the schema semantically (new classes, slots, ranges,
> enum values, or changes that break existing instance documents) must update this file.
> Documentation-only PRs (descriptions, CONTRIBUTING, site config) do not require a
> version bump but should be noted under `[Unreleased]` when substantial.

---

## [Unreleased]

### Added

- `docs/mappings.md` — external-standard mappings table (Uberon, OBI, PROV-O, DRS, RO-Crate, Bioschemas).
- `exact_mappings:` annotations on `core.Activity`, `dataset.Dataset/File/FileSet`, `dataset.Assay`,
  `analysis.WorkflowDefinition`, `analysis.WorkflowRun`.
- `UO:` prefix in `core.yaml`; `EDAM:` and `prov:` prefixes in `dataset.yaml`;
  `bioschemas:` prefix in `analysis.yaml`.
- `version: 0.1.0` on all schema modules.
- `CONTRIBUTING.md` — schema style guide and conventions.
- `CHANGELOG.md` (this file).

---

## [0.1.0] — 2026-06-03

This is the inaugural versioned release, seeding the CHANGELOG with the phases
that have been merged into `main`.

### Phase 0 — Schema relocation and local verification (PR #1)

- Relocated the brain-bank LinkML schema from `tissue-db-linkml-schema` to this
  standalone repository (`VA-NCPTSDBB-Bioinformatics/brainbank-hippo-schema`).
- Verified the schema compiles locally with `linkml`: lint, `gen-pydantic`, and
  example validation all pass.
- Fixed the default branch to `main` (was unset); removed stale branches.

### Phase 5 — Brain-bank workflow port to the extension layer (PR #2)

- Added the `brainbank` module (`schema/brainbank.yaml`) as the tree-root container
  and lab extension layer.
- Ported the full brain-bank workflow from `tissue-db-linkml-schema/bank_brain_workflow.yaml`:
  material subclasses (`CNSSection`, `Cerebellum`, `Cerebrum`, `Hemisphere`, `Medulla`,
  `OlfactoryBulb`, `PinealGland`, `Pons`, `SubstantiaNigra`, `ChoroidPlexus`,
  `Pituitary`, `SpinalCord`, `CSF`, `Blood`, `DNA`, `RNA`, …) and process subclasses
  (`BankFreshBrain`, `BankFixedBrain`, `BankDura`, `BankCSF`, `BankBlood`, `BankSkin`,
  `BankMuscle`, `BankVessels`, `BankSpinalCord`, `BlockDura`, `BlockMuscle`,
  `BlockSpinalCord`, `BlockFrozenBrain`, `BlockFixedBrain`, `BlockFixedHemisphere`,
  `SectionFixedBrain`, `DissectFrozenBrain`, `DissectFixedBrain`, `CultureDura`,
  `CultureSkin`, `SliceTissueToSlide`, `CreateBrainSlide`, `CreateSpinalCordSlide`).
- Re-parented all workflow classes onto `tissue.Process` (`is_a Process`) rather than
  the legacy `is_a Transaction`. The old `Transaction.sop` maps to `Process.protocol`
  (inherited from `core.Activity`); the old `from_samples` maps to `Process.inputs`.
- Added `BrainBank` tree-root container collecting all entity lists.
- Added `examples/brainbank-workflow-example.yaml` (CI-validated).

### Phase 3 — Computational provenance: core.Activity, File/FileSet, analysis module (PR #3)

- Promoted `Activity` to `core.Activity` — a PROV-style abstract base for all
  event/process types (`tissue.Process`, `dataset.Assay`, `analysis.Analysis`).
  `Activity` carries `protocol` (SOP reference) and `performed_on` (date).
- Added `dataset.File` and `dataset.FileSet` as the physical-file layer beneath
  `Dataset`. `File` has `uri`, `file_format`, `media_type`, `size_bytes`, `checksum`,
  `checksum_algorithm`. `FileSet` groups files by `role`.
- Added the `analysis` module (`schema/analysis.yaml`) with:
  - `WorkflowDefinition` (`is_a Protocol`) — the reusable, versioned pipeline recipe.
    The inherited `document_location` is the pipeline source URL; `version` is the
    release tag; `engine` names the workflow engine (Nextflow, Snakemake, CWL, WDL, …).
  - `Analysis` (`is_a Activity`) — a computational execution consuming and producing
    `Dataset`s. Carries `input_datasets`, `output_datasets`, `parameters`,
    `started_at`, `ended_at`, `status`, `compute_environment`, `parent_analysis`.
  - `WorkflowRun` (`is_a Analysis`) — a single engine-driven execution of a
    `WorkflowDefinition`. Linked to its definition via the inherited `protocol` slot
    (narrowed to `WorkflowDefinition`).
  - `Parameter` — a named key–value setting supplied to an analysis run.
- Wired `workflow_definitions`, `analyses` collections into `BrainBank`.
- Added `examples/brainbank-analysis-example.yaml` (CI-validated).

### Documentation (this PR)

- Backfilled `description:` on every slot, class, enum, and permissible value across
  all 8 modules (`core`, `anatomy`, `person`, `tissue`, `dataset`, `analysis`,
  `pathology`, `brainbank`). Added `meaning:` CURIEs for unit and file-format values.
  `linkml-lint` now emits zero `(recommended)` warnings.

---

[Unreleased]: https://github.com/VA-NCPTSDBB-Bioinformatics/brainbank-hippo-schema/compare/v0.1.0...HEAD
[0.1.0]: https://github.com/VA-NCPTSDBB-Bioinformatics/brainbank-hippo-schema/releases/tag/v0.1.0
