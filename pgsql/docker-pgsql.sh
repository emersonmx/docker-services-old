#!/bin/bash

docker run --rm \
    --name pgsql \
    -e POSTGRES_USER=postgres \
    -e POSTGRES_PASSWORD=secret \
    -e PGDATA=/var/lib/postgresql/data/pgdata \
    -v data:/var/lib/postgresql/data/pgdata \
    -p 5432:5432 \
    postgres:10-alpine
