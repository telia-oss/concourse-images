FROM golang:1.10-alpine as resource
RUN apk add --update \
    make \
    bash \
    git
    && rm -rf /var/cache/apk/*

FROM resource