-- Ejercicio practico usando subconsultas
-- Practical exercise using subqueries

select titulo
from Series
where serie_id in (Select serie_id from Episodios where rating_imdb >8)