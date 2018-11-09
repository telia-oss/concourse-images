FROM python:3.7-alpine as resource
RUN apk add --update --no-cache \
    git \
    make \
    zip \
    unzip
RUN pip install \
    pyyaml \
    docopt \
    jinja2

FROM resource
ENTRYPOINT [ "python" ]
CMD [ "--help" ]
