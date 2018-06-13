#!/bin/bash

project_path="$(dirname $(dirname $(realpath $0)))"
project_name="$(basename $project_path)"
service_path="$(dirname $(realpath $0))"
service_name="$(basename $service_path)"
container_name="${project_name}_${service_name}_1"

echo 'Updating configs...'
docker cp "$service_path/nginx.conf" $container_name:/etc/nginx/
docker cp "$service_path/conf.d/default.conf" $container_name:/etc/nginx/conf.d/
echo 'Done.'
