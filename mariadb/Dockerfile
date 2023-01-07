FROM debian:buster

RUN apt-get update -y
RUN apt-get install mariadb-server -y


RUN service mysql start

RUN mysql -u root < matef.sql

CMD ["mysqld_safe"]


