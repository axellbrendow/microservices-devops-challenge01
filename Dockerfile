FROM php:7.3.6-fpm-alpine3.9

RUN apk add bash mysql-client \
    && docker-php-ext-install pdo pdo_mysql

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www/html

COPY . .

RUN composer install \
	&& php artisan config:cache

EXPOSE 9000

ENTRYPOINT ["./entrypoint.sh"]
