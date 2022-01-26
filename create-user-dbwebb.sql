drop user if exists 'dbwebb'@'%';

create user 'dbwebb'@'%'
IDENTIFIED
WITH mysql_native_password
BY 'password'
;

grant all privileges
on *.*
to 'dbwebb'@'%'
with grant option
;
show variables like "%version%";
select
    User,
    Host,
    Grant_priv,
    plugin
from mysql.user
where
	User IN ('root', 'dbwebb', 'user')
order by user
;