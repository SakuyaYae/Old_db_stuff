select * from kurstillfalle
where kursansvarig in ( 
select
	akronym
    from
    larare
    where
    avdelning = "DIDD"
    )
;
    (
    SELECT akronym, avdelning FROM larare WHERE avdelning = 'DIDD'
)
UNION
(
    SELECT akronym, avdelning FROM larare WHERE avdelning = 'DIPT'
)
;
select akronym, fornamn, efternamn, Ålderr
from
v_larare
where 
Ålderr = (
select Ålderr
from
v_larare
order by Ålderr desc
limit 1
)
;