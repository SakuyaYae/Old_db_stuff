create database if not exists skolan;

use skolan;


show databases;


CREATE USER IF NOT EXISTS 'user'@'%'
IDENTIFIED
with mysql_native_password
BY 'pass'
;

show grants for 'user'@'%';
GRANT ALL PRIVILEGES
ON *.*
TO 'user'@'%'
;
