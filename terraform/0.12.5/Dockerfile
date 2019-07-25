FROM hashicorp/terraform:0.12.5 as resource
RUN apk add --update --no-cache \
    make
FROM resource
ENTRYPOINT [ "terraform" ]
CMD [ "--help" ]
