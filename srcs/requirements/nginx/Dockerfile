FROM debian:bullseye

RUN apt update && \
    apt install nginx -y && \
    apt install openssl -y

COPY conf/nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /etc/nginx/ssl/

RUN openssl req -x509 -new -newkey rsa:2048 -nodes -out /etc/nginx/ssl/tmiftah.cer -keyout /etc/nginx/ssl/tmiftah.key -subj "/C=MA/L=Khouribga/O=1337/CN=tmiftah.42.fr/UID=tmiftah"

CMD ["nginx", "-g", "daemon off;"]