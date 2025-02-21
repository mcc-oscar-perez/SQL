-- Ejercicio practico de HAVING
-- HAVING practical exercise 

select temporada, sum(duracion) as duracion_total
from episodios
where serie_id =  2
group by temporada
having sum(duracion) > 400