-- Ejercicio practico de RIGHT JOIN
-- RIGHT JOIN practical exercise 

select s.titulo as 'Título de la Serie', e.titulo as 'Título del Episodio', e.duracion as 'Duración'
from Episodios as e
right join Series as s
on e.serie_id = s.serie_id
where e.duracion > 30
order by s.titulo asc