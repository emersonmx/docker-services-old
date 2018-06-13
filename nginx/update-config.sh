#!/bin/bash

echo 'Updating configs...'
docker cp nginx.conf docker-services_nginx_1:/etc/nginx/
docker cp conf.d/default.conf docker-services_nginx_1:/etc/nginx/conf.d/
echo 'Done.'
