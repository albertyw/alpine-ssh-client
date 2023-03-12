# alpine-ssh-client

This repository was originally forked from https://github.com/kroniak/alpine-ssh-client

A little docker image based on alpine with ssh-client and bash

## using from Drone CI

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

## using from docker

`docker run -it --rm albertyw/ssh-client bash`
