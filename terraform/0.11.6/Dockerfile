FROM hashicorp/terraform:0.11.6 as resource
RUN apk add --update --no-cache \
    make
FROM resource
ENTRYPOINT [ "terraform" ]
CMD [ "--help" ]
