#!/usr/bin/env sh

composer install
chmod -R 777 storage
php artisan migrate:fresh --seed
php-fpm
