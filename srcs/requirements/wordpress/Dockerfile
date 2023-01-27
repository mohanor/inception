FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y
RUN mkdir -p /var/www/html

RUN apt-get install php-fpm php-mysql -y
RUN apt-get install wget -y && apt-get install curl -y
RUN apt-get install php7.3-fpm -y
RUN service php7.3-fpm start

COPY ./tools/www.conf /etc/php/7.3/fpm/pool.d
COPY ./tools/script.sh /

RUN chmod 777 /script.sh

CMD ["/script.sh"]
