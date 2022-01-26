SELECT 
    *
FROM
    kurs AS k,
    kurstillfalle AS kt
WHERE
    k.kod = kt.kurskod;
select * from larare;
select * from kurs;
select * from kurstillfalle;
SELECT *
FROM kurs AS k
    JOIN kurstillfalle AS kt
        ON k.kod = kt.kurskod
    JOIN larare AS l
        ON l.akronym = kt.kursansvarig;
        
drop view if exists v_planering;        
CREATE VIEW v_planering
AS
SELECT *
FROM kurs AS k
    JOIN kurstillfalle AS kt
        ON k.kod = kt.kurskod
    JOIN larare AS l
        ON l.akronym = kt.kursansvarig;
        
SELECT 
    akronym, fornamn, efternamn, SUM(lasperiod) AS tillfallen
FROM
    v_planering
GROUP BY akronym
ORDER BY akronym
;
 SELECT 
    akronym, fornamn, efternamn, COUNT(akronym) AS tillfallen
FROM
    v_planering
GROUP BY akronym
ORDER BY tillfallen DESC
;
 
 SELECT 
	kod,
    namn,
    fornamn,
    efternamn,
	akronym,
    TIMESTAMPDIFF(YEAR, fodd, CURDATE()) AS age
FROM
    v_planering
ORDER BY age DESC
limit 6
;