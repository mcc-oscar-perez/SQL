-- Ejercicios practicos de PRTITION BY
-- PARTITION BY practical exercises 

-- (1)

select titulo, genero, año_lanzamiento,
row_number() 
over (partition by genero order by año_lanzamiento desc) as ranking
from series

-- (1)

select temporada, titulo, fecha_estreno,
row_number() 
over (partition by temporada order by fecha_estreno desc ) as ranking_temporada 
from Episodios

-- (3)

select temporada, titulo, rating_imdb,
row_number()
over(partition by temporada order by rating_imdb desc) 'Ranking IMDb'
from episodios 
where serie_id = 2


