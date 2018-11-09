FROM python:3.6-alpine3.7 as resource
RUN apk add --update \
    git \
    zip \
    unzip \
    jq \
    && rm -rf /var/cache/apk/*
RUN pip install \
    awscli

FROM resource
ENTRYPOINT [ "aws" ]
CMD [ "--version" ]
