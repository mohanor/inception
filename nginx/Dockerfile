FROM debian:buster

RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install openssl -y
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/CN=localhost"


COPY nginx.conf /etc/nginx/

EXPOSE 443

COPY nginx.html /var/www/html


CMD ["nginx", "-g", "daemon off;"]
