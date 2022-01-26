SELECT 
    akronym
FROM
    larare
WHERE
    avdelning in ("DIDD")
;
select akronym 
from larare
where akronym like 'h%'
;

select akronym
from larare
where fornamn like '%o%'	
;


SELECT 
    akronym
FROM
    larare
where
    lon BETWEEN 30000 AND 50000
;

SELECT 
    akronym
FROM
    larare
WHERE
    kompetens < 7 AND lon > 40000
;

select akronym
from larare
where
	akronym in ("sna", "dum", "min")
;


select akronym
from larare
where 
	(lon > 80000) or (kompetens = 2 and avdelning = "ADM")
;


SELECT fornamn, efternamn, lon
FROM larare
;
SELECT 
    fornamn, efternamn, lon
FROM
    larare
ORDER BY efternamn DESC
;
SELECT 
    fornamn, efternamn, lon
FROM
    larare
ORDER BY efternamn ASC
;
SELECT 
    fornamn, efternamn, lon
FROM
    larare
ORDER BY lon DESC
;
SELECT 
    fornamn, efternamn, lon
FROM
    larare
ORDER BY lon ASC
;
SELECT 
    fornamn, efternamn, lon
FROM
    larare
ORDER BY lon DESC
limit 3
;