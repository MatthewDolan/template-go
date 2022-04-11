.PHONY: default
default: lint test build

.PHONY: generate
generate:
	@./bin/go generate ./...

.PHONY: test
test: generate
	@./bin/gotestsum ./... -- -race

.PHONY: lint
lint: generate
	@./bin/golangci-lint run ./...

.PHONY: fmt
fmt: generate
	@./bin/golangci-lint run --fix ./...

.PHONY: build
build: generate
	@./bin/go build -o ./bin ./...
