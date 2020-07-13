#!/usr/bin/env sh

chmod -R 777 storage
php artisan migrate:fresh --seed
php-fpm
