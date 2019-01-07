#!/bin/bash

docker run --rm \
    -ti \
    --user $(id -u):$(id -g) \
    --volume $COMPOSER_HOME:/.composer \
    --volume $(pwd):/code \
    --entrypoint="composer" \
    emersonmx/php72 $@
