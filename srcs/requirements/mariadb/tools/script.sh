#!/bin/bash

mysqld_safe &

sleep 10

sed -i 's/bind-address            = 127.0.0.1/bind-address = 0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf

mariadb -u root -e"CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;"
mariadb -u root -e"CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_USER_PASSWORD';"
mariadb -u root -e"GRANT ALL PRIVILEGES ON $MYSQL_DATABASE .* TO '$MYSQL_USER'@'%';"
mariadb -u root -e"FLUSH PRIVILEGES;"
mariadb -u root -p${MYSQL_ROOT_PASSWORD} -e"ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"
mariadb -u root -p${MYSQL_ROOT_PASSWORD} -e"shutdown"

exec mysqld
