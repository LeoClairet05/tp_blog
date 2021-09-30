FROM php:5.6-apache

WORKDIR /var/www/html/

RUN docker-php-ext-install pdo mysqli pdo_mysql 

RUN apt-get update && apt-get install -y \
        zip unzip

RUN php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer

COPY ./blog/ .

RUN composer install
RUN php artisan migrate
#RUN php artisan migrate:install

RUN usermod -u 1000 www-data
RUN a2enmod rewrite
