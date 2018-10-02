FROM python:3.6-alpine3.7 as resource
RUN apk add --update \
        git \
        zip \
        unzip \
        jq \
        && rm -rf /var/cache/apk/*
RUN pip install \
    pyyaml \
    docopt \
    awscli

FROM resource
