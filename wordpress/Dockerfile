FROM debian:buster


RUN mkdir -p /var/www/html
RUN apt update -y
RUN apt install php-fpm php-mysql -y
RUN apt install curl -y
RUN apt install wget -y
RUN wget http://wordpress.org/latest.tar.gz
RUN apt-get install php7.3-fpm -y
RUN tar xfz latest.tar.gz
RUN cp -Rf wordpress/* /var/www/html/
RUN cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
COPY ./tools/www.conf /etc/php/7.3/fpm/pool.d
RUN service php7.3-fpm start

# RUN rm -f latest.tar.gz
# RUN rm index.html
# RUN cp /var/www/html/wp-config-sample.php /var/wwww/html/wp-config.php



COPY ./tools/script.sh /
RUN chmod 777 /script.sh

CMD ["/usr/sbin/php-fpm7.3","--nodaemonize"]
