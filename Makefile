.PHONY: default
default: lint test

.PHONY: test
test:
	@./bin/gotestsum ./... -- -race

.PHONY: lint
lint:
	@./bin/golangci-lint run ./...

.PHONY: fmt
fmt:
	@./bin/golangci-lint run --fix ./...
