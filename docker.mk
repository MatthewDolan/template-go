.PHONY: build-docker
build-docker:
	@docker build . --build-arg CMD=helloworld -t ghcr.io/matthewdolan/go-template:latest

.PHONY: run-docker
run-docker:
	@docker run ghcr.io/matthewdolan/go-template/helloworld:latest
