SELECT SUM(lon * 1.064)
FROM larare;


update larare 
	set 
		lon = 85000
    where 
		akronym = 'dum'
;
update larare 
	set 
		kompetens = 7
    where 
		akronym = 'dum'
;
update larare 
	set 
		lon = 49000 * 1.02
    where 
		akronym = 'min'
;
update larare 
	set 
        kompetens = 2 
    where 
		akronym = 'min'
;
update larare 
	set 
		lon = 27000 * 1.022 
    where 
		akronym = 'fil'
;
update larare 
	set 
		kompetens = 3
    where 
		akronym = 'fil'
;
update larare 
	set 
		lon = 27000 * 1.022 
    where 
		akronym = 'gyl'
;
update larare 
	set 
		lon = 27000 * 1.022 
    where 
		akronym = 'ala'
;
update larare 
	set 
		lon = 45000
    where 
		akronym = 'sna'
;
update larare 
	set 
        kompetens = 2
    where 
		akronym = 'sna'
;
update larare 
	set 
		lon = 30000
    where 
		akronym = 'hag'
;
update larare 
	set
        kompetens = 2
    where 
		akronym = 'hag'
;
update larare 
	set 
		lon = (((35000 * 1.02) * 1.03) * 1.022)
    where 
		akronym = 'hoc'
;

SELECT SUM(lon) as Lönesumma
FROM larare;

SELECT SUM(305000 / lon) as Lönesumma_ökning
FROM larare
;
select (kompetens) AS Kompetens 
FROM larare
;

SELECT akronym, avdelning, fornamn, kon, lon, kompetens
FROM larare
ORDER BY lon DESC
;
SELECT
    SUM(lon) AS Lönesummaa,
    SUM(kompetens) AS Kompetens 
FROM larare
;