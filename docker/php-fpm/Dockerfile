FROM php:8.1-fpm-alpine

RUN apk update && apk add unzip autoconf g++ make \
    && pecl install xdebug \
    && docker-php-ext-install pdo_mysql && docker-php-ext-enable xdebug

RUN mv $PHP_INI_DIR/php.ini-development $PHP_INI_DIR/php.ini

COPY ./conf.d /usr/local/etc/php/conf.d
COPY www.conf /usr/local/etc/php-fpm.d/

WORKDIR /var/www/app
