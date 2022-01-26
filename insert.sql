delete from larare;
insert into larare values ('sna', 'DIPT', 'Severus', 'Snape', 'M', 40000, '1951-05-01', 1);
insert into larare values ('dum', 'ADM', 'Albus', 'Dumbledore', 'M', 80000, '1941-04-01', 1);
insert into larare values  ('min', 'DIDD', 'Minerva', 'McGonagall', 'K', 40000, '1955-05-05', 1);
insert into larare values
	('hag', 'ADM', 'Hagrid', 'Rubeus', 'M', 25000, '1956-05-06', 1),
    ('fil', 'ADM', 'Argus', 'Filch', 'M', 25000, '1946-04-06', 1),
    ('hoc', 'DIDD', 'Madam', 'Hooch', 'K', 35000, '1948-04-08', 1)
;
insert into larare
	(akronym, avdelning, fornamn, efternamn, kon, fodd)
values
	('gyl', 'DIPT', 'Gyllenroy', 'Lockman', 'M', '1952-05-02'),
    ('ala', 'DIPT', 'Alastor', 'Moody', 'M', '1943-04-03')
;
update larare 
	set 
		lon = 30000 
    where 
		akronym = 'gyl'
        or akronym = 'ala';

INSERT INTO larare_pre SELECT * FROM larare;
SELECT SUM(lon) AS 'Lönesumma', SUM(kompetens) AS Kompetens FROM larare;
SELECT SUM(lon) AS 'Lönesumma', SUM(kompetens) AS Kompetens FROM larare_pre;