SELECT genero, titulo 
FROM series
ORDER BY genero

SELECT s.titulo, AVG(e.rating_imdb) AS promedio
FROM series as s
LEFT JOIN episodios as e
ON s.serie_id = e.serie_id
GROUP BY s.titulo 
ORDER BY promedio DESC
LIMIT 3

SELECT sum(e.duracion) as D, e.titulo, s.titulo
FROM episodios as e
LEFT JOIN series as s
ON e.serie_id = s.serie_id
WHERE s.titulo = 'Stranger Things'
GROUP BY e.titulo
order by D desc