#!/bin/bash


openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=MO/L=KH/O=1337/OU=student/CN=[matef.1337.ma](http://matef.42.ma/)"

# echo "
# server {
#     listen 443 ssl;
#     listen [::]:443 ssl;
#     #server_name www.$DOMAIN_NAME $DOMAIN_NAME;
#     ssl_certificate $CERTS_;
#     ssl_certificate_key /etc/ssl/private/nginx-selfsigned.key;
#     } " > /etc/nginx/sites-available/default

nginx -g "daemon off;"