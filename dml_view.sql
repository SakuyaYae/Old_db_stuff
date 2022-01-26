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
 