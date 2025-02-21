-- Proyecto practico para poner a prueba los conocimientos de la carpeta 3
-- Practical project to test the knowledge of folder 3

select 
	s.titulo, 
    s.año_lanzamiento, 
    s.genero, 
    avg(e.rating_imdb) as promedio_imdb,
    s.serie_id
from series as s
join episodios as e
on s.serie_id = e.serie_id
where s.genero in  (select genero 
				   from(
					   SELECT genero, count(titulo) as Titulos 
					   FROM series
					   group by genero
					   order by Titulos desc
					   limit 3
						) as subconsulta
)
group by s.serie_id
order by promedio_imdb desc