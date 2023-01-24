FROM debian:buster

RUN apt-get update -y
RUN apt-get install mariadb-server -y



RUN sed -i '28s/127.0.0.1/0.0.0.0/'  /etc/mysql/mariadb.conf.d/50-server.cnf
RUN sed -i '19s/#port/port/'  /etc/mysql/mariadb.conf.d/50-server.cnf
RUN service mysql start

COPY ./tools/script.sh /

RUN chmod 777 /script.sh

ENTRYPOINT [ "/script.sh" ]
CMD ["mysqld_safe"]
