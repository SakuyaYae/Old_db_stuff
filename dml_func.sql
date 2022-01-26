SELECT
    CONCAT(fornamn, ' ', efternamn, ' (', avdelning, ')') as Info
from larare
;

SELECT
    CONCAT(fornamn, ' ', efternamn, ' (', lower(avdelning), ')') as Info
from larare
limit 3
;

select CURDATE()
from larare
;

select fornamn, fodd, now()
from larare
;

SELECT
    fornamn,
    TIMESTAMPDIFF(YEAR, fodd, CURDATE()) AS age
FROM larare
order by age
;

select fornamn, fodd
from larare
where year(fodd) >= 1940 and year(fodd) < 1950
;

