
.PHONY: generate-go
generate-go:
	@bin/go generate ./...

.PHONY: test-go
test-go: generate-go
	@bin/gotestsum ./... -- -race

.PHONY: lint-go
lint-go: generate-go
	@bin/golangci-lint run ./...

.PHONY: fmt-go
fmt-go: generate-go
	@bin/golangci-lint run --fix ./...

.PHONY: build-go
build-go: generate-go
	@bin/go install ./...

.PHONY: upgrade-go
upgrade-go:
	@bin/go get -t -u ./...
