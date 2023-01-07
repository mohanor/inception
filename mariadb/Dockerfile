FROM debian:buster

RUN apt-get update -y
RUN apt-get install mariadb-server -y


RUN mysql -u root < matef.sql

RUN service mysql start

CMD ["mysqld_safe"]


