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

