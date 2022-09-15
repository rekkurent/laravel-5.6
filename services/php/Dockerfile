FROM php:7.1.3-fpm

#https://laravel.com/docs/5.6/installation
# PHP >= 7.1.3 
# OpenSSL PHP Extension 
# PDO PHP Extension 
# Mbstring PHP Extension 
# Tokenizer PHP Extension 
# XML PHP Extension 
# Ctype PHP Extension 
# JSON PHP Extension

ENV TZ=UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update \
&& apt-get install -y \
openssl \
libzip-dev \
libxml2-dev \
git \
unzip \
cron \
&& docker-php-ext-install -j$(nproc) pdo pdo_mysql zip
RUN pecl install xdebug-2.9.8 && docker-php-ext-enable xdebug

EXPOSE 9003  

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
WORKDIR /var/www/laravel56.my

CMD ["php-fpm"]



