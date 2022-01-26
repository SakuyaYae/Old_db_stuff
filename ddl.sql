drop table if exists larare;
create table larare
(
akronym char (3),
avdelning char (4),
fornamn varchar (20),
efternamn varchar (20),
kon char (1),
lon int,
fodd date,

primary key (akronym)
)
ENGINE INNODB
CHARSET utf8
COLLATE utf8_swedish_ci
;