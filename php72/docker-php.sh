#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker run --rm \
    -ti \
    --user $(id -u):$(id -g) \
    --volume $(pwd):/code \
    emersonmx/php72 $@
