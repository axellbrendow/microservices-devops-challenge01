#!/usr/bin/env sh

dockerize -wait tcp://app:9000 -timeout 300s \
    -template ./.docker/nginx/nginx.tmpl:/etc/nginx/conf.d/default.conf

nginx -g 'daemon off;'
