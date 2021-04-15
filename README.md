# Concourse Images

This repository contains reusable docker images for use in Concourse tasks.

The goal is to create images for common tasks once in this repository, and then reuse them across different projects, so that everybody benefits from each others ideas and improvements.

## Usage

The Dockerfiles declared in this repository will produce images via automated builds on Dockerhub, and made available under e.g. `teliaoss/concourse-<subdirectory>`. The
images can be used in your task definition as follows:

```yml
---
platform: linux

image_resource:
  type: docker-image
  source:
    repository: teliaoss/concourse-awscli
    tag: "latest"
...
```


## Issues

Feel free to submit issues to this repository. Please include a detailed description.

## Contributing

Submit a pull-request.
