SELECT DISTINCT
    l.akronym AS Akronym,
    CONCAT(l.fornamn, " ", l.efternamn) AS Namn,
    l.avdelning AS Avdelning,
    kt.kurskod AS Kurskod
FROM larare AS l
    LEFT OUTER JOIN kurstillfalle AS kt
        ON l.akronym = kt.kursansvarig
;
select distinct
	kt.kurskod AS Kurskod,
    kt.lasperiod as lasperiod,
    k.namn as kursnamn
from kurstillfalle AS kt
	right outer join kurs as k
		on kt.kurskod = k.kod
order by lasperiod
limit 2
;