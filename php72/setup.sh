#!/bin/bash

docker run --name tmp-php -d emersonmx/php72
docker cp tmp-php:/usr/local/etc/php/php.ini-production php.ini
docker rm -f tmp-php
