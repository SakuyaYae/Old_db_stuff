set names 'utf8';
drop table if exists person;
CREATE TABLE person (
    fornamn VARCHAR(10)
);
insert into person values
("Örjan"), ("Börje"), ("Bo"), ("Øjvind"),
("Åke"), ("Åkesson"), ("Arne"), ("Ängla"),
("Ægir")
;

ALTER TABLE person CONVERT TO CHARSET utf8 COLLATE utf8_swedish_ci;
select * from person;