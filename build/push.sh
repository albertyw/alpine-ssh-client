#!/usr/bin/env bash
set -euo pipefail

command -v docker >/dev/null 2>&1 || {
    echo >&2 "This script requires the docker to be installed"
    exit 1
}

SCRIPT_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

"$SCRIPT_ROOT"/build.sh

docker push albertyw/ssh-client:3.12
docker push albertyw/ssh-client:3.13
docker push albertyw/ssh-client:3.14
docker push albertyw/ssh-client:3.15
docker push albertyw/ssh-client:latest
