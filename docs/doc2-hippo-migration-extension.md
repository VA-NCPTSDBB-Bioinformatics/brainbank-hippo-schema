# Document 2 of 2 — Hippo Migration & Extension Design

**Audience:** autonomous implementation agent stack
**Companion:** Document 1 — Brain Bank LinkML Schema Design
**Runtime:** `BU-Neuromics/hippo`
**Status:** design; grounded in the hippo ReferenceLoader author guide + CHANGELOG + CLI reference (June 2026)

---

## 0. Scope and legend

How versioned schema modules and reference data are **delivered, depended upon, and migrated** in hippo, with lab extensions as the norm (the brain bank itself ships as the reference extension — §2).

- **[CONFORM]** — confirmed hippo capability; wire it up.
- **[PROPOSE]** — hippo does **not** have this today; build it (in hippo, or as CI/convention on existing primitives).
- **[VERIFY]** — unconfirmed from docs; check hippo source before relying on it.

**Two corrections that frame everything below:**

1. **`hippo migrate` is a DDL/storage migrator, not semantic ETL.** Target-version arg unused in v0.1; it reconciles per-class tables to the merged schema (add/drop columns, views, provenance backfill).
2. **ReferenceLoader carries the *reference-data + versioning* layer, NOT domain-data migration.** A loader's `upgrade()` refreshes *its own shipped dataset*, not the deployment's domain records.

**Resolution (committed):** §2A abstracts the reusable part of ReferenceLoader into a `SchemaPackage` genus, with `ReferenceLoader` and a new first-party `DomainModule` as sibling species. `DomainModule` is the home for domain-data migration. Read §2A before §3–§6; it is the spine of the sprint (§9).

---

## 1. Hippo primitives this design rests on (confirmed)

**[CONFORM]** Base class `Entity` is provided by the runtime (`hippo_core`); fragments subclass it (`is_a: Entity`). System fields (`id`, `is_available`, `superseded_by`, `actor_id`, timestamps) and the append-only PROV-O provenance log are runtime-managed. Three-layer merge precedence: **user schema > reference loaders > `hippo_core`/`hippo_ext`**.

**[CONFORM]** `ReferenceLoader` ABC (`hippo.core.loaders.reference`), discovered via the `hippo.reference_loaders` entry point. Required: `versions()`, `entity_types()`, `schema_fragment()`, `load()`. Optional: `upgrade()`, `validate()`, `load_params_schema` (Pydantic → CLI flags), a Typer sub-app via `hippo.reference_loader_cli`. `ConfigurableReferenceLoader` base class exists; `FakeReferenceLoader` is the canonical example.

**[CONFORM]** `schema_fragment()` **must** set `default_prefix` = loader `name`; all its classes/slots are namespaced under `<name>:` and referenced as `<name>:ClassName`. Duplicate prefixes → `ConfigError`. Hippo auto-injects `provided_by: <name>@<version>` on every introduced element (free per-element ownership record). Colliding top-level imports/prefixes are stripped automatically; loader-private imports pass through.

**[CONFORM]** `load(client, version, params=None) -> LoadResult` ingests the loader's dataset (`client.put(...)`). `upgrade(client, from_version, to_version, params=None)` defaults to re-ingesting via `load(to_version)`; override for a diff. Populate `LoadResult.entity_ids` for `--prune-old` (which soft-deletes the prior version's rows). Both run inside `client.load_context(name, version)`; writes recorded in `reference_write_log`.

**[CONFORM]** `requires: { <loader>: "==x.y.z" }` in a **user schema** pins a loader version; `SchemaRegistry` enforces against `hippo_meta.reference_versions` at load and **refuses to merge on mismatch**. This is the hard version-coherence gate.

**[CONFORM]** `validate(user_artifact)` (optional) validates a user's own data against the loader's schema. `cached_fetch(url, expected_sha256=, loader_name=)` — content-addressable, sha256-verified downloads (`CacheIntegrityError` on mismatch). A `"test"` version MUST load a tiny, network-free bundled fixture (for hermetic downstream CI).

**[CONFORM]** Gate primitives: `hippo validate --schema <dir> --data <bundle>` and `hippo ingest --validate-schema <dir> --dry-run` validate identically to live ingest, **before any writes**, against the merged schema. `hippo schema-diff <a> <b>` reports structural deltas.

**[CONFORM — weaker than first stated]** Cross-loader foreign keys are **not** DB-validated in v1. `loader_depends_on` (a `schema_fragment` annotation) only emits a **warning** when a dependency is absent; `load()` must handle missing FK targets gracefully. ⇒ subset referential integrity must be guaranteed by **CI validating the merged closure**, not by the runtime refusing an incoherent merge.

**[VERIFY]** Whole-`upgrade()` transaction atomicity across multiple entity types (the per-write `load_context` shares the entity write's transaction, but full-upgrade rollback is unspecified). Whether `hippo reference upgrade` orders multiple loaders by `loader_depends_on` (the annotation is documentation-only ⇒ assume **not**; see §6).

---

## 2. The mapping: what becomes a loader, what doesn't

**Reference data → ReferenceLoaders (textbook fit) [CONFORM]:**
- `brainbank-valuesets` and per-ontology loaders (`brainbank-uberon`, `brainbank-mondo`, …) ship the controlled-vocabulary terms as entities, versioned by ontology release; `upgrade()` fetches a release diff; `cached_fetch` + `expected_sha256` for reproducibility; `"test"` fixture for CI. This is exactly what `upgrade()`/`--prune-old` are for.

**Schema modules → loaders for versioning + `requires:` pinning [CONFORM mechanism]:**
- `brainbank-core` (name `core`, prefix `core:`) provides the abstract `core:Association` + evidence/method mixins (subclassing runtime `Entity`); `subject`, `tissue`, `dataset`, `pathology`, and the association pair modules each ship as a loader contributing its `schema_fragment()`. Their `load()` is a no-op (no shipped data); their value is the **versioned fragment + `requires:` pin + `provided_by` ownership stamp + `loader_depends_on` graph**.
- Consequence (updates Doc 1 namespacing): because `default_prefix` must equal the loader name, base types are **not** root-unqualified. Subclass runtime `Entity` directly; reference `core:Association`, `subject:Subject`, `tissue:Sample` by FQN.

**The brain bank deployment = a user schema (top precedence) [CONFORM]** that `requires:` the base loaders at pinned versions and extends them via `is_a`/`slot_usage`. Deploying it this way is deliberate: it is the reference extension proving the base modules never assume they are the leaf consumer.

**NOT a loader concern — domain-data migration [see §5].** The lab's operational Subject/Tissue *records* are ingested via `hippo ingest` and owned by the lab. Migrating them across schema versions is **not** what loader `upgrade()` does. That path is §5.

This resolves the standing questions: *"define both versions in an association"* → the association loader's `loader_depends_on` names both endpoints; the deployment's `requires:` pins their versions. *"Where does version resolution happen?"* → at schema load, via `requires:` + refuse-on-mismatch. *"Is the bundle opt-out?"* → yes by selecting which loaders the user schema `requires:`, **but** structural coherence of a subset is enforced by CI merged-closure validation, not the runtime (cross-loader FKs only warn).

---

## 2A. The SchemaPackage abstraction (genus over ReferenceLoader) — [PROPOSE, committed]

**Rationale.** The no-op `load()` we accept for pure-schema modules (§2) is the smell: `ReferenceLoader` conflates "contribute a versioned, pinnable schema fragment" (general) with "fetch & load externally-maintained data" (specific). Abstract the general part into a base `SchemaPackage`; `ReferenceLoader` becomes one subclass; the first-party **`DomainModule`** — committed — becomes a *sibling* that owns mutable, locally-authored data and migrates it in place. This gives domain-data migration (orphaned and [PROPOSE]-tagged across §5–6) a principled home as a peer of ReferenceLoader, sharing the same pinning, dependency graph, merge, and lifecycle orchestration.

### Genus / species split
**Genus `SchemaPackage`** (the pinnable contributor): `name`, `description`, `versions()`, `schema_fragment()` (incl. `default_prefix = name` and the `provided_by` stamp), `depends_on()`, optional `validate(artifact)`, optional `load_params_schema`. The version-pin gate (`requires:` + refuse-on-mismatch) and merge precedence operate at *this* layer — they are about versioned fragments, not data. Three lifecycle hooks, **all defaulting to no-op**:
- `provision(client, version, params=None)` — install-time population.
- `evolve(client, from_version, to_version, params=None)` — upgrade-time transition (chain-aware, below).
- `deprovision(client, version)` — teardown.

`populates_types()` (formerly `entity_types()`) is a *species* concern — which classes a package fills with data, distinct from which it *defines* (`schema_fragment()`). Pure-schema packages omit it, and the hand-written no-op `load()` disappears.

**Species:**
- `ReferenceLoader(SchemaPackage)` — external data; `provision`→`load()`, `evolve`→re-ingest/diff, `deprovision`→prune. Keeps existing method names ⇒ existing loaders unchanged.
- `DomainModule(SchemaPackage)` — first-party mutable data; `evolve` = in-place data migration (§ below). Home for the domain-migration work formerly in §5.2/§6.
- Pure-schema modules (`core`, `subject`, `tissue`, association pairs) — plain `SchemaPackage`; default no-op hooks; DDL handled by `hippo migrate`.

Capability **Protocols** (`ExternalData`, `MigratableData`) carry typing + orchestrator dispatch, so the data behaviors stay *siblings* (not a deep inheritance chain) — the hooks carry behavior, the protocols carry typing.

**Back-compat:** `ReferenceLoader` stays public and unchanged for authors; `hippo.reference_loaders` becomes a subset/alias of a broader `hippo.schema_packages` entry-point group. The hierarchy widens upward; nothing breaks.

### Multi-version `evolve`: the migration chain
`evolve` must handle multi-hop upgrades (1.2.0 → 2.0.0 across intermediate 1.3.0, 1.4.0), where the breaking changes and their transforms live in the intermediate steps. Design (Alembic/Django-style):
- A `MigratableData` package declares **discrete migration steps**, each tagged `(from_version → to_version)` with its transform; these form a **migration DAG**. Paths come from the edges, **not** from sorting version slugs — this sidesteps the author guide's "opaque slug" rule.
- **All steps covering the package's supported range ship with the package** at its current version (like an Alembic `versions/` dir). The resolver never fetches old package code; the installed target carries its history back to a declared **floor**.
- Resolver: read the deployment's current version (`hippo_meta.reference_versions` / registry) → find target → compute the ordered path through the DAG → run each step's transform in sequence. Single-hop = a one-edge path. A package may declare an efficient **shortcut edge** (e.g. a direct `1.2.0→2.0.0`) that the path-finder prefers.
- **Below floor** (current older than the oldest step) → fail loud: "upgrade to ≥`<floor>` first via package `<X>`" (the squashed-migration boundary).
- Each step is small and independently testable (you author only one consecutive transition); the resolver composes them.

### Chain × extensions × the gate
- **Per-hop dependency ordering:** at *each* version hop the orchestrator runs every affected package's `evolve` in `depends_on` order (base before dependents), so an extension step always sees base data already at that hop's shape. A coordinated multi-package upgrade sequences over intermediate **bundle** coordinates (§3); each hop = dependency-ordered per-package evolves.
- **Staging & validation:** run the whole chain in a staging transaction; validate after each hop against that hop's schema (error localization) **and** validate the final state against the final merged schema incl. lab extensions (§6.3) before a single commit-or-rollback. Each step writes supersession events ⇒ traceable lineage.

### `deprovision` (teardown)
Orchestrator removes the fragment + version record; the hook retires data:
- **Default:** no-op (pure-schema packages).
- **`ReferenceLoader`:** prune (soft-delete) its `provided_by`-stamped rows — safe, reconstructible from upstream.
- **`DomainModule`:** **refuses by default when it owns live domain data** (no silent loss); requires explicit `--force` and/or an export, consistent with no-hard-deletes.
- Refuse to deprovision a package that others `depends_on` (uninstall-with-dependents).

---

## 3. Dependency resolution and coherence

**[CONFORM]** "Upgrade `subject` — does it force association/referenced upgrades?" Governed by SemVer (Doc 1 §5) + the merge gate:
- **subject patch/minor** → additive; dependents unchanged; `hippo migrate` reconciles DDL.
- **subject major** → only loaders whose fragments reference the *broken* elements react; re-pin and re-validate; bump only if actually affected.

The enforced gate is `requires:` + refuse-on-mismatch at load. Resolution is not a bespoke solver — it is the merge succeeding (coherent) or failing with the named offending pin (incoherent). **[PROPOSE]** a `brainbank-bundle` manifest pinning one coherent `(loader→version + ontology snapshot)` set, CI-validated, that the deployment's `requires:` block is generated from; hippo has no bundle concept.

---

## 4. Reproducibility & the `provided_by` stamp

**[CONFORM]** Every loader-introduced element carries `provided_by: <name>@<version>`, and `cached_fetch` pins source artifacts by sha256. Combined with immutable published version URIs (Doc 1 §6) and the append-only provenance log, a deployment's exact schema+data+ontology provenance is recoverable — the reproducibility/audit property, largely for free.

---

## 5. Domain-data migration (the part ReferenceLoader does NOT cover)

The lab's domain records migrate via two tiers; neither is loader `upgrade()`.

**5.1 DDL — [CONFORM].** `hippo migrate` (`--dry-run` to preview) reconciles per-class tables to the merged schema. Covers all additive (minor) changes with no authored code.

**5.2 Semantic transformation — `DomainModule.evolve` (§2A).** When a major reshapes data (split a field, change units, re-root a value set), the transform is authored as a `DomainModule` migration step: read old-shape records, write new-shape records, supersede the old (hippo is append-only + id-keyed upsert + provenanced, so this is auditable/replay-recoverable). Multi-hop chaining and step packaging are §2A. Most majors decompose into declarative moves (rename/default/widen) derivable from `hippo schema-diff` between the old and new merged schemas; reserve hand-written transforms for genuinely semantic cases.

**5.3 Footprint automation — [CONFORM].** `hippo schema-diff <old> <new>` yields the structural delta = the migration footprint for the declarative tier; imperative steps declare their touch-set. CI computes this at release.

**5.4 The hard validation gate — [CONFORM primitive; PROPOSE orchestration].** Before any committed write, stage the transform output and run `hippo ingest --validate-schema <merged-dir> --dry-run` against the **fully merged schema including the lab's extension layer**; commit only on green. The primitive exists; the staged, cross-step, commit-or-rollback wrapper does not (§6).

---

## 6. Lab-extension migration (the norm)

Base transformation code is written against base elements and **cannot be total over extended deployments** — it cannot see a lab's added slots or `slot_usage` overrides. Made safe by:

1. **Footprint → exposure [CONFORM inputs].** A lab intersects the base migration's write-set (from `schema-diff`) with the elements its extension references (`is_a`/`slot_usage`/added-slot deps). Empty → base migration safe as-is. Non-empty → lab must supply a complementary step there.
2. **Ordering [PROPOSE].** The lab's complementary transform runs after the base transform. `loader_depends_on` documents the order but is **not** runtime-enforced for upgrades, so the orchestrator (§5.2 / below) must sequence base→extension explicitly.
3. **End-to-end gate is the real backstop [CONFORM primitive].** After base + lab steps are staged, `hippo validate --data` against the merged schema *including lab extensions* catches stranded extension fields (e.g. a lab's `diagnosis_confidence` annotating a base `diagnosis` that a base major split) as concrete record-level failures, before any commit. Footprint warns in advance; the gate guarantees no silent corruption.

---

## 7. Conformance vs. build

**Use as-is [CONFORM]:** ReferenceLoader for reference data (`load`/`upgrade`/`--prune-old`/`cached_fetch`/`"test"` fixture); `schema_fragment()` versioned delivery + `provided_by`; `requires:` pin + refuse-on-mismatch (the version-coherence gate); `hippo migrate` (DDL); `hippo schema-diff` (footprint); `hippo ingest --validate-schema --dry-run` and `hippo validate --data` (the validation gate); loader `validate(user_artifact)`.

**Build [PROPOSE] — unified under the `SchemaPackage` abstraction (§2A):**
- **The `SchemaPackage` genus + `DomainModule`/`ReferenceLoader` species + `ExternalData`/`MigratableData` protocols** — the spine the rest hangs off.
- **Migration-chain resolver** — DAG path-find with shortcut edges + floor, running `evolve` steps in order (§2A).
- **Dependency-ordered lifecycle orchestrator** — resolves the `depends_on` graph once and dispatches `provision`/`evolve`/`deprovision` across all packages per hop (subsumes the old single-loader, unordered `hippo reference upgrade`).
- **Single staged commit-or-rollback wrapper** around the end-to-end validation gate (§5.4/§6.3).
- **`brainbank-bundle` meta-coordinate** (§3).
- **Exposure report tool** intersecting base footprint with an installed extension's referenced elements (§6.1).
- **CI merged-closure integrity check** standing in for hippo's missing cross-package FK enforcement (§1–§2).

---

## 8. Resolved [VERIFY] items (from the author guide)

- `upgrade(client, from_version, to_version, params=None)` — confirmed; default re-ingests via `load(to_version)`; override for diffs. ✓
- Domain-entity fit — **resolved: loaders manage reference data + schema fragments, not domain-data migration** (§2, §5). ✓
- `validate()` — validates a user artifact against the loader's schema; optional, per-loader. ✓
- Cross-loader FK enforcement — **not** in v1 (warning only). ✓
- **Still open [VERIFY] against source:** whole-`upgrade()` multi-entity transaction atomicity; whether any runtime path orders loaders by `loader_depends_on` (assume not).

---

## 9. Roadmap / sprint (migration & extension workstream)

The `SchemaPackage` abstraction (§2A) is the spine; milestones build it, then the species, then the orchestration, then the brain bank as the proving extension.

**S0 — `SchemaPackage` genus + back-compat.** Base ABC (`name`/`versions()`/`schema_fragment()`/`depends_on()` + no-op `provision`/`evolve`/`deprovision`); `ExternalData`/`MigratableData` protocols; `ReferenceLoader` re-parented as a subclass with method names intact; `hippo.schema_packages` entry-point group with `hippo.reference_loaders` as a subset/alias. *Done:* every existing loader installs unchanged; a pure-schema `SchemaPackage` with no hooks merges and pins via `requires:`.
**S1 — Reference-data species path.** Real `value_sets`/ontology `ReferenceLoader` with `cached_fetch` + `expected_sha256` + diff `evolve` + `"test"` fixture. *Done:* an ontology release upgrade re-ingests via diff with prune and a clean dry-run.
**S2 — `DomainModule` + single-hop `evolve`.** First-party module owning mutable data; one declared `(from→to)` migration step; supersession + provenance; staged dry-run gate. *Done:* a v1→v2 domain migration runs with full provenance and passes the gate.
**S3 — Migration-chain resolver + `deprovision`.** DAG of steps shipped with the package; path-find with shortcut edges + floor + below-floor fail-loud; multi-hop 1.2.0→2.0.0 across intermediates; `deprovision` with the ReferenceLoader-prune / DomainModule-refuse asymmetry and dependents guard. *Done:* a 3-hop upgrade composes intermediate steps correctly; deprovision refuses on live domain data and on packages with dependents.
**S4 — Orchestrator + gate + bundle.** Dependency-ordered cross-package dispatch (`provision`/`evolve`/`deprovision`) per hop; staged commit-or-rollback wrapping the end-to-end merged-schema gate (incl. extensions); `brainbank-bundle` → generated `requires:`; exposure-report tool; CI merged-closure integrity check. *Done:* one command migrates a multi-package deployment to a target bundle, dependency-ordered, validating end-to-end before commit; an extension with a stranded field is flagged pre-migration and blocked at the gate.
**S5 — Brain bank as the proving extension.** Deploy the brain bank as a `DomainModule` user-layer extension over the base packages; run a real multi-hop base major-version upgrade through S2–S4. *Done:* the brain bank upgrades across a base major with its extension intact, validated, and provenanced.

---

## 10. References (verified June 2026)
- ReferenceLoader author guide (ABC, `upgrade` signature, `default_prefix`=name, `provided_by`, cross-loader FK warning): https://raw.githubusercontent.com/BU-Neuromics/hippo/refs/heads/main/docs/writing-a-reference-loader.md
- Hippo CHANGELOG (`requires:`, merge precedence, write-log, prune): https://github.com/BU-Neuromics/hippo/blob/main/CHANGELOG.md
- Hippo CLI reference (`migrate`, `validate`, `ingest --dry-run`, `reference`, `schema-diff`): https://github.com/BU-Neuromics/hippo/blob/main/docs/cli-reference.md
- Hippo configuration (annotations, CEL validators): https://github.com/BU-Neuromics/hippo/blob/main/docs/configuration.md
- Hippo data model (system fields, supersession, provenance): https://github.com/BU-Neuromics/hippo/blob/main/docs/data-model.md
- Reference-loaders user guide: https://github.com/BU-Neuromics/hippo/blob/main/docs/reference-loaders.md
