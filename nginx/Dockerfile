FROM debian:buster

RUN apt-get update
RUN apt-get install -y nginx

COPY nginx.html /var/www/html

CMD ["nginx", "-g", "daemon off;"]
