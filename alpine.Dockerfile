FROM php:7.4-fpm-alpine

WORKDIR /var/www/html

RUN apk add --no-cache \
    zip \
    re2c \
    file \
    nginx \
    gmp-dev \
&& apk add --no-cache --virtual .build-deps \
    $PHPIZE_DEPS \
    libmcrypt-dev \
    openldap-dev \
    libzip-dev \
    libmcrypt-dev \
    zlib-dev \
    libpng-dev \
    imagemagick-dev \
&& curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
&& docker-php-ext-install \
    gd \
    ldap \
    zip \
    fileinfo \
    gmp \
    pdo \
    pdo_mysql \
&&  pecl install \
    mcrypt \
    imagick \
&& docker-php-ext-enable \
    mcrypt \
    imagick \
&& apk del .build-deps && rm -rf /tmp/*
