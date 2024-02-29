#!/bin/bash

# Start the MariaDB service
service mariadb start

# Wait for MariaDB to start
while ! mysqladmin ping -hlocalhost --silent; do
    sleep 1
done

# Run SQL command to create database
mysql -uroot -e"CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};"

# Keep the script running to keep the container alive
tail -f /dev/null
