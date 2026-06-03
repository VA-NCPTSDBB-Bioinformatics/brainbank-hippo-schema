SCHEMA_DIR := schema
MODULES := $(wildcard $(SCHEMA_DIR)/*.yaml)
ROOT := $(SCHEMA_DIR)/brainbank.yaml
BUILD := build

.PHONY: all lint validate pydantic merged clean

all: lint validate pydantic

## Lint every module (--ignore-warnings: fail only on errors; see ci.yml)
lint:
	@for f in $(MODULES); do echo "== lint $$f =="; linkml-lint --ignore-warnings $$f || exit 1; done

## Validate example data against the tree-root container
validate:
	linkml-validate -s $(ROOT) -C BrainBank examples/brainbank-example.yaml

## Generate a Pydantic SDK from the root (smoke test that the merged schema compiles)
pydantic: $(BUILD)
	gen-pydantic $(ROOT) > $(BUILD)/brainbank_model.py
	@echo "wrote $(BUILD)/brainbank_model.py"

## Emit the fully merged schema closure
merged: $(BUILD)
	gen-linkml --mergeimports --format yaml $(ROOT) > $(BUILD)/brainbank-merged.yaml

$(BUILD):
	mkdir -p $(BUILD)

clean:
	rm -rf $(BUILD)
