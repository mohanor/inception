#!/bin/bash


# change password of root
service mysql start

echo "CREATE DATABASE IF NOT EXISTS  $DB_NAME;" > file.sql;
echo "CREATE USER IF NOT EXISTS'$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';" >> file.sql;
echo "GRANT ALL PRIVILEGES  ON $DB_NAME.* TO '$DB_USER'@'%';" >> file.sql;

# echo "CREATE USER IF NOT EXISTS'root'@'%' IDENTIFIED BY '$DB_PASSWORD';" >> file.sql;
# echo "GRANT ALL PRIVILEGES  ON *.* TO 'root'@'%';" >> file.sql;

echo "FLUSH PRIVILEGES;" >> file.sql;


mysql < file.sql
killall mysqld
exec "$@"