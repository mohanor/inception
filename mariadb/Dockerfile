FROM debian:buster

RUN apt-get update -y
RUN apt-get install mariadb-server -y

COPY matef.sql /var/www/
RUN chmod 777 /var/www/matef.sql

RUN sed -i '28s/127.0.0.1/0.0.0.0/'  /etc/mysql/mariadb.conf.d/50-server.cnf
RUN service mysql start && mysql -u root < /var/www/matef.sql


CMD ["mysqld_safe"]
