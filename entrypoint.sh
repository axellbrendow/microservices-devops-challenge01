#!/usr/bin/env sh

composer install

chown -R www-data:www-data storage

# Try to connect to the database every 1 second over 120 seconds
dockerize -wait tcp://db:3306 -timeout 120s

php artisan cache:clear
php artisan config:clear
php artisan migrate:fresh --seed

php-fpm
