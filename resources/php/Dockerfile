FROM php:5.6-apache

WORKDIR /var/www/html/

RUN docker-php-ext-install pdo mysqli pdo_mysql 
RUN apt-get update && apt-get install -y \
        libmemcached-dev \
        zip unzip \
        zlib1g-dev

COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN pecl install memcached-2.2.0
RUN echo extension=memcached.so >> /usr/local/etc/php/conf.d/memcached.ini

RUN a2enmod rewrite
