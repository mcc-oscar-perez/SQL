-- Ejercicio practico de INNER JOIN
-- INNER JOIN practical exercise 

-- Ejercicio 2
-- Exercise 2

select * 
from Series 
inner join Episodios 
on Series.serie_id = Episodios.serie_id
limit 10

-- Ejercicio 2
-- Exercise 2

select s.titulo as titulo_serie, e.titulo as titulo_episodio, duracion
from Series as s
join Episodios as e
on s.serie_id = e.serie_id
where s.titulo = 'Stranger Things'