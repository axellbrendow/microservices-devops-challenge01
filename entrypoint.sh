#!/usr/bin/env sh

chmod -R 777 storage

composer install

php artisan config:cache
php artisan migrate:fresh --seed

php-fpm
