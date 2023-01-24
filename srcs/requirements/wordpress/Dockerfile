FROM debian:buster


RUN mkdir -p /var/www/html
RUN apt update -y

RUN apt install php-fpm php-mysql -y
RUN apt install curl -y
RUN apt install wget -y
RUN apt install curl -y
RUN apt-get install php7.3-fpm -y
RUN service php7.3-fpm start

COPY ./tools/www.conf /etc/php/7.3/fpm/pool.d
COPY ./tools/script.sh /

RUN chmod 777 /script.sh

CMD ["/script.sh"]


# ENTRYPOINT [ "/script.sh" ]
# CMD ["/usr/sbin/php-fpm7.3","--nodaemonize"]
