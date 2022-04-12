FROM ubuntu as builder

RUN apt-get update && apt-get -y install curl git

ADD . /build

WORKDIR /build

RUN /build/bin/go install ./cmd/...

FROM alpine

ARG CMD

COPY --from=builder /build/.hermit/go/bin/$CMD ./exec

CMD ["./exec"]
