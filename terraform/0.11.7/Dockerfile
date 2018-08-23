FROM hashicorp/terraform:0.11.7 as resource
RUN apk add --update \
    make \
    && rm -rf /var/cache/apk/*

FROM resource
