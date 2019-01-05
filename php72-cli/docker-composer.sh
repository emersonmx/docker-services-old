#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PROJECT_DIR=$SCRIPT_DIR

docker run --rm \
    -ti \
    --user $(id -u):$(id -g) \
    --volume $PROJECT_DIR:/code \
    --entrypoint="composer" \
    php72 $@
