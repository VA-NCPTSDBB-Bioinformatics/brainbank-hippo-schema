# Contributing to brainbank-hippo-schema

This guide explains the conventions and constraints that keep the schema consistent
and hippo-ready. Several of them are deliberate and non-obvious — please read this
before opening a PR, so you don't "fix" something intentional.

---

## Quick-start

```bash
pip install linkml
make lint       # lint every module individually
make validate   # validate all examples/*.yaml against BrainBank
make pydantic   # gen-pydantic smoke test
make all        # all three
```

---

## Schema conventions

### 1. Bare-name imports (no FQNs)

When you reference a class or slot from another module, use the **bare name**:

```yaml
# ✓ correct
is_a: NamedThing
range: Donor

# ✗ wrong — do not use FQNs
is_a: core:NamedThing
range: person:Donor
```

Fully-qualified names (`module:Class`) are deferred until the hippo migration
(DESIGN.md §7). Using FQNs now would create divergence between the plain-LinkML
prototype and the hippo-ready form.

### 2. Value sets are colocated in the module that owns them

There is no monolithic `value_sets.yaml`. Each enum lives in the module that uses it
(DESIGN.md §2.5):

| Enum | Module |
|---|---|
| `MassUnit`, `VolumeUnit`, `ConcentrationUnit` | `core` |
| `Species` | `person` |
| `AnatomicalSite` | `anatomy` |
| `SolidSampleFormat`, `ContainerType`, `StainType`, `CellType`, … | `tissue` |
| `AssayType`, `FileFormat`, `SequencingPlatform`, … | `dataset` |
| `AnalysisStatus`, `WorkflowEngine` | `analysis` |
| `Disease`, `MeasureType` | `pathology` |
| `BloodSampleType`, `DissectionOrientation`, `CultureMedia` | `brainbank` |

A vocabulary gets its own module only if it needs a thin term class with local metadata
(see `anatomy` with `AnatomicalStructure + AnatomicalSite`).

### 3. Base vs extension — extend, never edit base classes

The architecture splits into a **domain-agnostic base** (`core`, `anatomy`, `person`,
`tissue`, `dataset`, `analysis`, `pathology`) and a **brain-bank extension layer**
(`brainbank`). The extension layer extends base classes via `is_a` / `slot_usage`.

> **Rule:** Never edit a class in a base module to accommodate the brain-bank extension.
> Extend it from the `brainbank` module instead.

This is the hippo-readiness seam (DESIGN.md §7): the base modules become upstream
dependencies once we adopt hippo; touching them in place would break the migration path.

### 4. `default_range: string` must be declared in every module

LinkML's `default_range` does **not** propagate through imports. Every module must
declare it independently:

```yaml
default_range: string
```

Omitting it causes slots without explicit `range:` to fall back to the LinkML default,
which is `Any` — a validation hole.

### 5. Linting

CI runs `linkml-lint --ignore-warnings` on every module. This means:

- **Errors** fail the build.
- `(recommended)` missing-description warnings **are suppressed** in CI but must
  not appear for new work — all slots, classes, enums, and permissible values need
  a `description:`.
- `standard_naming` and `canonical_prefixes` warnings are **intentional** and
  suppressed (see DESIGN.md §8). Do not "fix" them.

To check your own work without `--ignore-warnings`:

```bash
linkml-lint schema/mymodule.yaml          # should show zero (recommended) warnings
```

---

## Adding a new module

1. Create `schema/mymodule.yaml`. Declare `id:`, `name:`, `version: 0.1.0`,
   `description:`, `default_prefix:`, `default_range: string`, and `imports:`.
2. Place it in the DAG — lower layers never reference upper layers
   (`core → anatomy / person → tissue → dataset / pathology → brainbank`).
3. Wire any new `tree_root` collections into `BrainBank` in `schema/brainbank.yaml`.
4. Add `imports: - mymodule` to the modules that depend on it.
5. Add an example in `examples/` that exercises the new classes and validate it:
   `linkml-validate -s schema/brainbank.yaml -C BrainBank examples/my-example.yaml`.
6. Run `make all` to confirm everything still passes.

---

## Examples

Every file in `examples/` is validated in CI against the merged root schema and the
`BrainBank` root class:

```bash
linkml-validate -s schema/brainbank.yaml -C BrainBank examples/<file>.yaml
```

**Add an example whenever you add a new pattern.** Examples are living documentation —
they're also the basis for the cookbook tutorials in `docs/cookbook.md`.

**Note on dates:** `linkml-validate` has a known quirk where date/datetime values
inside `anyOf` union types are rejected even when valid. `performed_on`, `started_at`,
and similar date slots are therefore omitted from example files (see DESIGN.md §8, §10).

---

## Discovery cases

`evals/discovery.yaml` is the brain-bank **discovery case set**: researcher-phrased
questions ("how long after death was tissue collected from each donor?") paired with
the slot a planner must name to answer them (`post_mortem_interval_hours`). It is
graded by [Reel](https://github.com/datahelix-platform/reel)'s evaluation harness
against a served copy of this schema, and it lives here because a case set describes
one schema and should version with it. Downstream recipes (datahelix's `demo-reel`)
fetch it at the schema ref they bake rather than keeping a copy.

To run it, serve this schema through Mosaic (any deployment that exposes the MCP
endpoint, e.g. the datahelix `demo` or `demo-reel` recipe), install Reel, then from
the repo root:

```bash
MOSAIC_MCP_URL=<served copy of this schema, e.g. http://localhost:8099/mcp> \
REEL_EVAL_CASES=evals/discovery.yaml \
    python -m reel.evals.run
```

The runner samples each case **three times** (its default; `-n` to change) because
model behaviour is a distribution and a single run cannot tell a broken prompt from
an unlucky one. **Every run of every case must pass.** A case that passes 2 of 3 is a
coin flip, and the exit status counts it as unreliable. Each run spends model calls,
so this is not part of `make all` or CI; run it when you touch a slot description, an
enum, or a case.

Rules for the cases themselves (carried from `mosaic-demo-small/evals/discovery.yaml`):

- **Assert slots named, never prose or row counts.** `expect_slots` is a subset check:
  naming a related slot alongside the expected one is a better answer, not a failure.
  Use `expect_none: true` for a topic the schema genuinely does not model.
- **Phrase every utterance in a researcher's vocabulary, not in field names.** The
  point is to test that the slot resolves through its `description:` and enum values,
  so a question that quotes the slot name tests nothing.
- The file header pins the schema ref the cases were last verified against. When you
  re-run the set against a newer ref and every case passes every sample, bump that ref
  in the same PR. A schema change that lands without a re-run leaves the ref alone.

---

## Versioning

This schema uses [Semantic Versioning](https://semver.org/):

- `version:` is set on every module header (currently `0.1.0`).
- When you land a PR that changes the schema semantically (new classes, slots, ranges,
  or broken backward compatibility), bump the version accordingly.
- See [CHANGELOG.md](CHANGELOG.md) for the change log policy.

---

## Make targets

| Target | What it does |
|---|---|
| `make lint` | Run `linkml-lint --ignore-warnings` on every module |
| `make validate` | Validate every `examples/*.yaml` against `BrainBank` |
| `make pydantic` | Generate a Pydantic SDK with `gen-pydantic` (smoke test) |
| `make merged` | Emit the fully merged schema closure to `build/` |
| `make all` | lint + validate + pydantic |
| `make clean` | Remove `build/` |

---

## Commit style

Use [Conventional Commits](https://www.conventionalcommits.org/): `docs:`, `feat:`,
`fix:`, `refactor:`, `chore:`. Scope to the module when relevant, e.g.
`feat(dataset): add ImageFormat enum`.
