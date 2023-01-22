#!/usr/bin/env sh
sed -ri -e 's!/var/www/html!/var/www/html/public!g' /etc/apache2/sites-available/000-default.conf
apachectl -D FOREGROUND
