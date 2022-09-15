#!/bin/bash 
cd ..
rm -rf ./laravel56.my
mkdir laravel56.my
cd ./laravel56.my
composer create-project --prefer-dist laravel/laravel ./ "5.6"
sed -i -r "s/^(DB_HOST=).*/\1$MYSQL_HOST/" .env  
sed -i -r "s/^(DB_DATABASE=).*/\1$MYSQL_DATABASE/" .env
sed -i -r "s/^(DB_USERNAME=).*/\1$MYSQL_USER/" .env
sed -i -r "s/^(DB_PASSWORD=).*/\1$MYSQL_PASSWORD/" .env
chown -R www-data:www-data ./*
php artisan migrate