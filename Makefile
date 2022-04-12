.PHONY: default
default: lint test build

.PHONY: generate
generate:
	@go generate ./...

.PHONY: test
test: generate
	@gotestsum ./... -- -race

.PHONY: lint
lint: generate
	@golangci-lint run ./...

.PHONY: fmt
fmt: generate
	@golangci-lint run --fix ./...

.PHONY: build
build: generate
	@go install ./...

.PHONY: upgrade
upgrade: upgrade-go upgrade-hermit

.PHONY: upgrade-go
upgrade-go:
	@go get -t -u ./...

.PHONY: upgrade-hermit
upgrade-hermito:
	@go get -t -u ./...
