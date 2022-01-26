SET NAMES 'utf8';
DROP TABLE IF EXISTS kurstillfalle;
DROP TABLE IF EXISTS kurs;
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
create table kurs (
	kod varchar(6) not null,
    namn VARCHAR(40),
    poang float,
    niva char(3),
    primary key (kod)
)
ENGINE INNODB
CHARSET utf8
COLLATE utf8_swedish_ci
;
create table kurstillfalle (
	id int AUTO_INCREMENT NOT NULL,
    kurskod varchar(6) not null,
    kursansvarig char(3) not null,
    lasperiod int not null,
	PRIMARY KEY (id),
    FOREIGN KEY (kurskod) REFERENCES kurs(kod),
	FOREIGN KEY (kursansvarig) REFERENCES larare(akronym)
)
ENGINE INNODB
CHARSET utf8
COLLATE utf8_swedish_ci
;
alter table larare add column kompetens int;

alter table larare drop column kompetens;

alter table larare add column kompetens int default 1 not null;

show columns from larare;

SELECT 
    l.akronym,
    l.fornamn,
    l.efternamn,
    l.lon AS Nu,
    p.lon AS Pre,
    l.lon - p.lon as diff,
    round((1 - (l.lon / p.lon)) * -100) as proc,
    IF ( round((1 - (l.lon / p.lon)) * -100) > 3, "ok", "nok") as mini
FROM
    larare AS l
        JOIN
    larare_pre AS p ON l.akronym = p.akronym
ORDER BY akronym
;

drop view if exists v_lonerevision;
CREATE VIEW v_lonerevision
AS
SELECT
 l.akronym,
    l.fornamn,
    l.efternamn,
    l.lon AS Nu,
    p.lon AS Pre,
    l.lon - p.lon as diff,
	round((1 - (l.lon / p.lon)) * -100) as proc,
     IF ( round((1 - (l.lon / p.lon)) * -100) > 3, "ok", "nok") as mini
FROM
    larare AS l
        JOIN
    larare_pre AS p ON l.akronym = p.akronym
ORDER BY Proc asc
;
SELECT * FROM v_lonerevision;

drop view if exists v_larare;
CREATE VIEW v_larare
AS
SELECT
    akronym, fornamn, efternamn, avdelning, kon, lon, kompetens, fodd,
    TIMESTAMPDIFF(YEAR, fodd, CURDATE()) AS Ålderr
FROM larare;


SELECT * FROM v_larare;

select avdelning,
 avg(TIMESTAMPDIFF(YEAR, fodd, CURDATE())) as avgage
 from v_larare
 group by avdelning
 order by avgage
 ;
 DROP TABLE IF EXISTS larare_pre;
CREATE TABLE larare_pre LIKE larare;