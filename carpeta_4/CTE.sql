-- Ejercicios practicos de CTE
-- CTE practical exercises 


-- (1)

WITH ListaEpisodios AS (
SELECT serie_id, episodio_id, titulo FROM episodios
),

ListaSeries AS (
SELECT serie_id , descripcion FROM series
)

SELECT * 
FROM ListaEpisodios as e
LEFT JOIN ListaSeries as l
ON e.serie_id = l.serie_id


-- (2)

with PrimeroEpisodio as (

select serie_id, MIN(fecha_estreno) AS fecha_primer_episodio
from Episodios
group by serie_id
)

select s.titulo as 'Título de la Serie', pe.fecha_primer_episodio as 'Fecha del Primer Episodio'
from Series s 
join PrimeroEpisodio pe 
on s.serie_id = pe.serie_id
order by pe.fecha_primer_episodio asc


-- (3)

WITH total_series as (

SELECT año_lanzamiento, COUNT(*) AS Total
FROM Series
WHERE genero = "Ciencia ficción"
GROUP BY año_lanzamiento

)

SELECT * FROM total_series
ORDER BY año_lanzamiento
