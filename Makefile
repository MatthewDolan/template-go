include go.mk hermit.mk

.PHONY: default
default: lint test build

.PHONY: generate
generate: generate-go

.PHONY: test
test: test-go

.PHONY: lint
lint: lint-go

.PHONY: fmt
fmt: fmt-go

.PHONY: build
build: build-go

.PHONY: upgrade
upgrade: upgrade-go upgrade-hermit
