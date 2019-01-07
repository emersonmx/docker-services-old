#!/bin/bash

PROJECT_DIR=$(pwd)

docker run --rm \
    --user $(id -u):$(id -g) \
    --volume $PROJECT_DIR:/code \
    emersonmx/php-cs-fixer $@
