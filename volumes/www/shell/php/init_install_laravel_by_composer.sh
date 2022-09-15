#!/bin/bash 
cd /var/www/laravel56.my
file="./artisan"
if [ ! -f "$file" ]
then
	rm -rf *
	composer create-project --no-install --no-scripts --prefer-dist laravel/laravel ./ "5.6"
	composer config allow-plugins true -n
	composer create-project
	sed -i -r "s/^(DB_HOST=).*/\1$DB_HOST/" .env  
	sed -i -r "s/^(DB_DATABASE=).*/\1$DB_DATABASE/" .env
	sed -i -r "s/^(DB_USERNAME=).*/\1$DB_USERNAME/" .env
	sed -i -r "s/^(DB_PASSWORD=).*/\1$DB_PASSWORD/" .env
	
	#source_env="/home/variables/.env"
	#destination_env="/var/www/laravel56.my/.env"
	#sed -i -r "s/^(DB_HOST=).*/\1$(grep -oP "(?<=MYSQL_HOST=)(.*)" $source_env)/g" $destination_env
	#sed -i -r "s/^(DB_DATABASE=).*/\1$(grep -oP "(?<=MYSQL_DATABASE=)(.*)" $source_env)/g" $destination_env
	#sed -i -r "s/^(DB_USERNAME=).*/\1$(grep -oP "(?<=MYSQL_USER=)(.*)" $source_env)/g" $destination_env
	#sed -i -r "s/^(DB_PASSWORD=).*/\1$(grep -oP "(?<=MYSQL_PASSWORD=)(.*)" $source_env)/g" $destination_env
	
	chown -R www-data:www-data ./*
	php artisan migrate
fi
#exec "$@"	