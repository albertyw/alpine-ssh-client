FROM alpine:3.19
RUN apk add --no-cache \
  openssh-client \
  ca-certificates \
  bash

# Make it easier to run ssh-keyscan
WORKDIR /root
RUN mkdir -p /root/.ssh
