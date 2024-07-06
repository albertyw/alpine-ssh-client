FROM alpine:3.20.1
RUN apk add --update --no-cache \
  openssh-client \
  ca-certificates \
  bash

# Make it easier to run ssh-keyscan
WORKDIR /root
RUN mkdir -p /root/.ssh
