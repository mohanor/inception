CREATE DATABASE IF NOT EXISTS  wordpress;

CREATE USER IF NOT EXISTS'matef'@'%' IDENTIFIED BY '123';

GRANT ALL PRIVILEGES  ON wordpress.* TO 'matef'@'%';

FLUSH PRIVILEGES;