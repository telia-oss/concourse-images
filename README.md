# Docker Images

This repository contains reusable docker images for simple things that don't need to be versioned any more than 'latest'. Utility images for e.g. Concourse can in most cases go in this repository.

## Usage

The Dockerfiles declared in this repository will produces images via automated builds on Dockerhub, and made available under e.g. `teliaoss/<subdirectory>`. The
images can be used in your task definition as follows (using alpine-awscli as example):

```yml
---
platform: linux

image_resource:
  type: docker-image
  source:
    repository: teliaoss/alpine-awscli
    tag: "latest"
...
```

## Issues

Feel free to submit issues to this repository. Please include a detailed description.

## Contributing

Submit a pull-request.
