-- Proyecto practico para poner a prueba los conocimientos de la carpeta 1
-- Practical project to test the knowledge of folder 1


SELECT actor_id, count(*) as frecuencia
FROM  actuaciones
group by actor_id
order by frecuencia desc
limit 1

-- R = actor 18 frecuencia 2

select distinct serie_id, avg(rating_imdb) 
from episodios
group by 1
order by 2 desc
limit 1

-- R = serie 8 promedio 9.27

select episodio_id, max(duracion)
from episodios
group by 1
order by 2 desc
limit 1

-- R = Episodio 119 dura 93min