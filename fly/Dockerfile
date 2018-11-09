FROM alpine:latest as resource

ENV CONCOURSE_VERSION=4.2.1

RUN apk add --update --no-cache \
    ca-certificates \
    make \
    git
RUN wget -O /usr/local/bin/fly https://github.com/concourse/concourse/releases/download/v${CONCOURSE_VERSION}/fly_linux_amd64 && \
    chmod +x /usr/local/bin/fly

FROM resource
ENTRYPOINT [ "fly" ]
CMD ["--help"]
