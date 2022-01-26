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