FROM golang:1.11-alpine as resource
RUN apk add --update --no-cache \
    make \
    bash \
    git
FROM resource
ENTRYPOINT [ "go" ]
CMD [ "help" ]
