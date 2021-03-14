FROM php:7.4-fpm-alpine
#php
RUN apk add --update
RUN apk add composer libpng-dev libintl  gettext-dev libxml2-dev libzip-dev php7-session php-pdo_mysql php-pdo php-curl php7-tokenizer
RUN apk add libpng-dev libintl  gettext-dev libxml2-dev curl libzip-dev oniguruma-dev
RUN docker-php-ext-install  xml gettext gd mysqli zip pdo_mysql
RUN docker-php-ext-configure pdo_mysql && docker-php-ext-install pdo_mysql
WORKDIR /var/www/html/

