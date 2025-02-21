-- Ejercicio practico de LEFT JOIN
-- LEFT JOIN practical exercise 


-- Ejercicio 1
-- Exercise 1

select s.titulo as 'Título de la Serie' , e.titulo as'Título del Episodio', e.rating_imdb as 'Rating IMDB'
from Series as s
left join Episodios as e
on s.serie_id = e.serie_id
order by s.titulo asc 

-- Ejercicio 2
-- Exercise 2

select s.titulo as 'Título de la Serie', e.titulo as 'Título del Episodio', e.rating_imdb as'Rating IMDB'
from Series as s
left join Episodios as e
on s.serie_id = e.serie_id
where s.titulo = 'Stranger Things'
order by e.rating_imdb desc