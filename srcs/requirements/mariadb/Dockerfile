FROM debian:bullseye

RUN apt update -y && \
    apt install mariadb-server -y

RUN chmod 777 /var/lib/mysql

COPY tools/script.sh /tmp/script.sh

RUN chmod 777 /tmp/script.sh

CMD ["./tmp/script.sh"]
