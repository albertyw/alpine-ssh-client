FROM alpine:3.20.0
RUN apk add --update --no-cache \
  openssh-client \
  ca-certificates \
  bash

# Make it easier to run ssh-keyscan
WORKDIR /root
RUN mkdir -p /root/.ssh
