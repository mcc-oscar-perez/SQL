-- Ejercicios practicos de RANK
-- RANK practical exercises 

-- (1) 

select titulo, rating_imdb,
rank()
over (order by rating_imdb desc) as ranking
from episodios

-- (2)

select titulo,rating_imdb,
rank()
over(order by rating_imdb desc) as ranking_imdb
from episodios

-- (3)

select titulo, rating_imdb,
dense_rank() 
over(order by rating_imdb desc) as rating_imdb
from episodios 

-- (4)

select titulo, duracion,
dense_rank()
over(order by duracion desc) as ranking_por_duracion
from Episodios 

