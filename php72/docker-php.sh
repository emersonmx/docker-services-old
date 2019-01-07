#!/bin/bash

docker run --rm \
    -ti \
    --user $(id -u):$(id -g) \
    --volume $(pwd):/code \
    emersonmx/php72 $@
