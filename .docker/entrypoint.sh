#!/bin/bash
composer selfupdate
composer install
php artisan key:generate
php artisan migrate
php-fpm
