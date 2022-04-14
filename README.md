# template-go
A minimalist template for a Go repository.

The goal is to minimize the assumed to dependencies to almost nothing (it should be able to run as-is on Linux and Mac).

It relies on [hermit](https://github.com/cashapp/hermit) to install go and any dependent binaries. It uses [golangci-lint](https://github.com/golangci/golangci-lint) for linting & [gotestsum](https://github.com/gotestyourself/gotestsum) for testing.

It is relaively simple to clone this repo and use it as a starting point for any Go project. The change that needs to be made it to update the module name in `go.mod`.
