#!/usr/bin/env sh

php artisan migrate:fresh --seed
php-fpm
