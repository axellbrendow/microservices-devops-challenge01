#!/usr/bin/env sh

chmod -R 777 storage

composer install

# Try to connect to the database every 1 second over 40 seconds
dockerize -wait tcp://db:3306 -timeout 40s

php artisan config:cache
php artisan migrate:fresh --seed

php-fpm
