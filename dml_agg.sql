select
lon,
min(lon)
from
larare
;
select
lon,
max(lon)
from
larare
;
SELECT
    avdelning,
    AVG(kompetens)
FROM larare
GROUP BY avdelning
;
SELECT avdelning, kompetens, SUM(lon) as Summa
FROM larare
GROUP BY avdelning, kompetens
ORDER BY Summa DESC
;
select count(avdelning), sum(lon) as sumlon, avg(lon) as avglon
from larare
group by avdelning
order by avglon
;
select kon, avg(lon) as avglon
from larare
group by kon
order by avglon
;
select avdelning, avg(kompetens) as avgkompetens
from larare
order by avgkompetens desc limit 1
;

select avdelning, kompetens, round(avg(lon)) as avglon
from larare
order by avdelning, kompetens
;

select count(avdelning) as antal, avdelning , avg(lon) as avglon
from larare
group by avdelning
order by avglon
;

select count(avdelning) as antal, avdelning , avg(lon) as avglon, kompetens
from larare
group by avdelning, kompetens
order by avdelning, kompetens
;
select count(avdelning) as antal, avdelning , avg(lon) as avglon, kompetens
from larare
group by avdelning, kompetens
having kompetens < 4
order by avdelning, kompetens
;
select count(avdelning) as antal, avdelning , avg(lon) as avglon, kompetens
from larare
group by avdelning, kompetens
having kompetens < 4
and avglon > 29999 and avglon < 45001 and antal < 2
order by avdelning, kompetens, avglon
;

