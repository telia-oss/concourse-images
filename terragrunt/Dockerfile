FROM hashicorp/terraform:0.11.7 as resource
ADD https://github.com/gruntwork-io/terragrunt/releases/download/v0.14.10/terragrunt_linux_amd64 /usr/local/bin/terragrunt
RUN chmod +x /usr/local/bin/terragrunt

FROM resource
ENTRYPOINT ["/usr/local/bin/terragrunt"]
