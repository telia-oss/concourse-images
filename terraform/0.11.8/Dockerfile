FROM hashicorp/terraform:0.11.8 as resource
RUN apk add --update \
    make \
    && rm -rf /var/cache/apk/*

FROM resource
ENTRYPOINT [ "terraform" ]
CMD [ "--help" ]
