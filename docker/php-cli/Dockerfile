ARG PHP_IMAGE_VERSION
FROM php:${PHP_IMAGE_VERSION}-cli-alpine

COPY --from=composer:2.2 /usr/bin/composer /usr/local/bin/composer

RUN apk update && apk add unzip autoconf g++ make libpq-dev libxml2-dev \
    && apk add --update linux-headers \
    && docker-php-ext-install dom pdo_pgsql

RUN mv $PHP_INI_DIR/php.ini-development $PHP_INI_DIR/php.ini

RUN addgroup -g 1000 app && adduser -u 1000 -G app -s /bin/sh -D app

WORKDIR /var/www/app

USER app
