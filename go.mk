
.PHONY: generate-go
generate-go:
	@go generate ./...

.PHONY: test-go
test-go: generate-go
	@gotestsum ./... -- -race

.PHONY: lint-go
lint-go: generate-go
	@golangci-lint run ./...

.PHONY: fmt-go
fmt-go: generate-go
	@golangci-lint run --fix ./...

.PHONY: build-go
build-go: generate-go
	@go install ./...

.PHONY: upgrade-go
upgrade-go:
	@go get -t -u ./...
