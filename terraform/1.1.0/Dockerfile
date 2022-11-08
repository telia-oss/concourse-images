FROM hashicorp/terraform:1.1.0 as resource
RUN apk add --update --no-cache \
    ncurses \
    make \
    curl
RUN curl -sL https://taskfile.dev/install.sh | sh

FROM resource
ENTRYPOINT [ "terraform" ]
CMD [ "--help" ]
