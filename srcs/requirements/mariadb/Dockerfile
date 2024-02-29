FROM debian:bullseye

RUN apt update && \
    apt install mariadb-server -y && \
    /etc/init.d/mysql start

COPY tools/script.sh /tmp/script.sh

RUN chmod 777 /tmp/script.sh

CMD ["./tmp/script.sh"]
