# alpine-ssh-client

[![Docker Image CI](https://github.com/albertyw/alpine-ssh-client/actions/workflows/docker-image.yml/badge.svg)](https://github.com/albertyw/alpine-ssh-client/actions/workflows/docker-image.yml)

This repository was originally forked from https://github.com/kroniak/alpine-ssh-client

A little docker image based on alpine with ssh-client and bash

## Using from Drone CI

```yml
  - name: Deploy
    image: albertyw/ssh-client:4.0.0
    commands:
      - ssh-keyscan example.com >> /root/.ssh/known_hosts
      - ssh username@example.com -i /root/ssh/id_ed25519 uptime
    volumes:
      - name: ssh_key
        path: /root/ssh/id_ed25519
```

## Using from docker

`docker run -it --rm albertyw/ssh-client bash`

## Supported platforms

 - linux/386
 - linux/amd64
 - linux/arm/v6
 - linux/arm/v7
 - linux/arm64/v8
 - linux/ppc64le
 - linux/s390x
