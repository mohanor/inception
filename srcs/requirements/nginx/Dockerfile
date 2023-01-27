FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y nginx && apt-get install openssl -y

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt \
    -subj "/CN=matef.42.fr"

COPY ./tools/nginx.conf /etc/nginx/


CMD ["nginx", "-g", "daemon off;"]
