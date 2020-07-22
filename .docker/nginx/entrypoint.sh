#!/usr/bin/env sh

dockerize -template ./.docker/nginx/nginx.tmpl:/etc/nginx/conf.d/default.conf

nginx -g 'daemon off;'
