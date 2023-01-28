#!/bin/bash



if [ ! -f /var/www/html/wp.config.php ]; then

cd /var/www/html
wget http://wordpress.org/latest.tar.gz
tar xfz latest.tar.gz
cp -Rf wordpress/* /var/www/html/
cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php


sed -i "23s/database_name_here/$DB_NAME/" wp-config.php
sed -i "26s/username_here/$DB_USER/" wp-config.php
sed -i "29s/password_here/$DB_PASSWORD/" wp-config.php
sed -i "32s/localhost/$DB_HOST/" wp-config.php


curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

wp core install --url=$DOMAIN_NAME/ --title=$WP_SITE_TITLE --admin_user=$WP_ADMIN --admin_password=$WP_PASSWORD --admin_email=$WP_EMAIL --allow-root
wp user create $WP_AUTHOR $WP_AUTHOR_EMAIL --role=author --user_pass=$WP_AUTHOR_PWD --allow-root

fi

/usr/sbin/php-fpm7.3 -F

exec "$@"