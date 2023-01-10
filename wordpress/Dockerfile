FROM debian:buster


RUN apt update -y 

RUN apt install php-fpm php-mysql -y

RUN apt install curl -y


# COPY ./tools/script.sh /
COPY ./tools/wp-config.php /

RUN chmod 777 /script.sh


# CMD [ "/script.sh" ]