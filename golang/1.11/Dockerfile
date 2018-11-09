FROM golang:1.11-alpine as resource
RUN apk add --update \
    make \
    bash \
    git \
    && rm -rf /var/cache/apk/*

FROM resource
ENTRYPOINT [ "go" ]
CMD [ "help" ]
