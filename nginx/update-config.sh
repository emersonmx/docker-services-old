#!/bin/bash

project_path="$(dirname $(dirname $(realpath $0)))"
source "$project_path/libs/helpers.sh"
service_path="$(get_service_path $0)"
container_name="$(get_container_name $0)"

echo 'Updating configs...'
docker cp "$service_path/nginx.conf" $container_name:/etc/nginx/
docker cp "$service_path/conf.d/default.conf" $container_name:/etc/nginx/conf.d/
echo 'Done.'
