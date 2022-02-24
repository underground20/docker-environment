FROM php:8.1-cli-alpine

RUN curl -sS https://getcomposer.org/installer | php -- \
--install-dir=/usr/bin --filename=composer

RUN mv $PHP_INI_DIR/php.ini-development $PHP_INI_DIR/php.ini

WORKDIR /var/www/app
