FROM debian:buster

RUN apt-get update -y
RUN apt-get install mariadb-server -y

ENTRYPOINT ["mysqld"]
CMD ["--character-set-server=utf8mb4", "--collation-server=utf8mb4_unicode_ci"]


