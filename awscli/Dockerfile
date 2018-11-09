FROM python:3.7-alpine as resource
RUN apk add --update --no-cache \
    git \
    make \
    zip \
    unzip \
    jq
RUN pip install \
    awscli

FROM resource
ENTRYPOINT [ "aws" ]
CMD [ "--version" ]
