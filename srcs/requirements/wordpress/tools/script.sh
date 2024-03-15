#!/bin/bash

sleep 20

wp core download --allow-root --path=/var/www/html

wp config create --allow-root --dbname=$MYSQL_DATABASE --dbuser=$MYSQL_USER --dbpass=$MYSQL_USER_PASSWORD --dbhost=$DB_HOST --path=/var/www/html

wp core install --allow-root --url=$DOMAIN_NAME --title=$TITLE --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PASSWORD --admin_email=$WP_ADMIN_EMAIL --path=/var/www/html

wp user create $WP_NORMAL_USER $WP_NORMAL_EMAIL --allow-root --role=subscriber --user_pass=$WP_NORMAL_PASSWORD --path=/var/www/html

sed -i 's#listen = /run/php/php7.4-fpm.sock#listen = 0.0.0.0:9000#' /etc/php/7.4/fpm/pool.d/www.conf

/usr/sbin/php-fpm7.4 -F