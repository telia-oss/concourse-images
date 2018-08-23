FROM hashicorp/terraform:0.11.6 as resource
RUN apk add --update \
    make \
    && rm -rf /var/cache/apk/*

FROM resource
