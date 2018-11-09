FROM python:3.7-alpine as resource
RUN apk add --update \
    git \
    zip \
    unzip \
    && rm -rf /var/cache/apk/*
RUN pip install \
    pyyaml \
    docopt \
    jinja2

FROM resource
ENTRYPOINT [ "python" ]
CMD [ "--help" ]
