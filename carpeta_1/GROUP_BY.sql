-- Ejercicio practico de GROUP BY
-- GROUP BY practical exercise 

select año_lanzamiento, count(serie_id) as cantidad_de_series
from Series
group by 1
order by 1 asc

