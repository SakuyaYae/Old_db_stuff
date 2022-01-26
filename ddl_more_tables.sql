SET NAMES 'utf8';
DROP TABLE IF EXISTS kurstillfalle;
DROP TABLE IF EXISTS kurs;

create table kurs (
    namn VARCHAR(40),
    kod varchar(6) not null,
    poang float,
    niva char(3),
    primary key (kod)
)
ENGINE INNODB
CHARSET utf8
COLLATE utf8_swedish_ci
;
create table kurstillfalle (
	kurskod char(6) not null,
    kursansvarig char(3) not null,
    lasperiod int not null,
    id int AUTO_INCREMENT NOT NULL,
	PRIMARY KEY (id),
    FOREIGN KEY (kurskod) REFERENCES kurs(kod),
    FOREIGN KEY (kursansvarig) REFERENCES larare(akronym)
)
ENGINE INNODB
CHARSET utf8
COLLATE utf8_swedish_ci
;