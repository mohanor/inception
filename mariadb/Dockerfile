FROM debian:buster

RUN apt-get update -y
RUN apt-get install mariadb-server -y


RUN service mysql start

CMD ["/usr/bin/mysqld_safe"]


