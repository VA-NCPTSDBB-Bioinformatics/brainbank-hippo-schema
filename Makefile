SCHEMA_DIR := schema
MODULES := $(wildcard $(SCHEMA_DIR)/*.yaml)
ROOT := $(SCHEMA_DIR)/brainbank.yaml
BUILD := build
DOCS_GEN := docs/gen

.PHONY: all lint validate pydantic merged docs diagrams clean

all: lint validate pydantic

## Lint every module (--ignore-warnings: fail only on errors; see ci.yml)
lint:
	@for f in $(MODULES); do echo "== lint $$f =="; linkml-lint --ignore-warnings $$f || exit 1; done

## Validate every example against the tree-root container
validate:
	@for ex in examples/*.yaml; do echo "== validate $$ex =="; linkml-validate -s $(ROOT) -C BrainBank $$ex || exit 1; done

## Generate a Pydantic SDK from the root (smoke test that the merged schema compiles)
pydantic: $(BUILD)
	gen-pydantic $(ROOT) > $(BUILD)/brainbank_model.py
	@echo "wrote $(BUILD)/brainbank_model.py"

## Emit the fully merged schema closure
merged: $(BUILD)
	gen-linkml --mergeimports --format yaml $(ROOT) > $(BUILD)/brainbank-merged.yaml

## Generate LinkML reference docs and build the MkDocs site locally
docs: $(DOCS_GEN)
	gen-doc -d $(DOCS_GEN) $(ROOT)
	mkdocs build --strict
	@echo "Site built in site/"

## Regenerate Mermaid ER diagram sources from the schema
diagrams:
	gen-erdiagram \
	  --exclude-abstract-classes --exclude-attributes \
	  $(ROOT) > docs/schema-overview.mmd
	gen-erdiagram \
	  -c Donor -c SolidSample -c LiquidSample -c Assay -c Dataset \
	  -c File -c FileSet -c Analysis -c WorkflowRun -c WorkflowDefinition \
	  --follow-references --exclude-attributes \
	  $(ROOT) > docs/provenance-spine.mmd
	@echo "Wrote docs/schema-overview.mmd and docs/provenance-spine.mmd"

$(BUILD):
	mkdir -p $(BUILD)

$(DOCS_GEN):
	mkdir -p $(DOCS_GEN)

clean:
	rm -rf $(BUILD) site/
