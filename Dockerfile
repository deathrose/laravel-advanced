FROM php:7.4-fpm

WORKDIR /var/www/html

RUN apt-get update && apt-get install -y \
    libmcrypt-dev \
    libldb-dev \
    libldap2-dev \
    libzip-dev \
    zip \
    libgmp-dev \
    re2c \
    libmhash-dev \
    libmcrypt-dev \
    file \
    zlib1g-dev \
    libpng-dev \
    libmagickwand-6.q16-dev --no-install-recommends \
&& docker-php-ext-install \
    gd \
    ldap \
    zip \
    fileinfo \
    gmp \
&& pecl install \
    mcrypt \
    imagick \
&& docker-php-ext-enable \
    mcrypt \
    imagick
