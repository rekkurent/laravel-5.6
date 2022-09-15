#!/bin/bash
cd ..
rm -rf ./laravel56.my
mkdir laravel56.my
cd ./laravel56.my
composer global require "laravel/installer"
export PATH="$PATH:$HOME/.composer/vendor/bin"
laravel new ./ 
chown -R www-data:www-data ./*
sed -i -r "s/^(DB_HOST=).*/\1$MYSQL_HOST/" .env  
sed -i -r "s/^(DB_DATABASE=).*/\1$MYSQL_DATABASE/" .env
sed -i -r "s/^(DB_USERNAME=).*/\1$MYSQL_USER/" .env
sed -i -r "s/^(DB_PASSWORD=).*/\1$MYSQL_PASSWORD/" .env
php artisan migrate