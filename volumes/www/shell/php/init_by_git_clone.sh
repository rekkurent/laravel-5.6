#!/bin/bash 
cd /var/www/laravel56.my
file="./artisan"
if [ ! -f "$file" ]
then
	rm -rf *
	
	#git clone git@github.com:rekkurent/laravel-5.6-example.git .
	git clone https://github.com/rekkurent/laravel-5.6-example.git .
	composer install
	
	chown -R www-data:www-data ./*
	php artisan migrate
fi
#exec "$@"	