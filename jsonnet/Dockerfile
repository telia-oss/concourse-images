FROM alpine/git:latest as cloner
ENV GOPATH /go
RUN git clone https://github.com/google/go-jsonnet.git $GOPATH/src/github.com/google/go-jsonnet
RUN cd $GOPATH/src/github.com/google/go-jsonnet && git checkout v0.10.0

FROM golang:1.10 as builder
ENV GOPATH /go
RUN go get github.com/fatih/color
COPY --from=cloner $GOPATH/src/github.com/google/go-jsonnet $GOPATH/src/github.com/google/go-jsonnet
WORKDIR $GOPATH/src/github.com/google/go-jsonnet
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /jsonnet-amd64 -v jsonnet/cmd.go

FROM alpine:latest as resource
COPY --from=builder /jsonnet-amd64  /usr/local/bin/jsonnet
RUN chmod +x /usr/local/bin/jsonnet

FROM resource
ENTRYPOINT ["/usr/local/bin/jsonnet"]
