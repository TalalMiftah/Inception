FROM debian:bullseye

RUN apt update -y && \
    apt install php7.4-fpm php curl php-mysql mariadb-client -y

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod 777 wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

RUN mkdir -p /var/www/html

COPY tools/script.sh /tmp/script.sh

RUN service php7.4-fpm start

RUN chmod 777 /tmp/script.sh

CMD ["./tmp/script.sh"]