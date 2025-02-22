-- Ejercicios practicos de ROW_NUMBER
-- ROW_NUMBER practical exercises 

-- (1)

SELECT 
titulo, 
año_lanzamiento,
ROW_NUMBER() OVER (ORDER BY año_lanzamiento DESC) AS orden
FROM series

-- (2)

WITH OrdenSeries as (

SELECT 
titulo, 
año_lanzamiento,
ROW_NUMBER() OVER (ORDER BY año_lanzamiento DESC) AS orden
FROM series

)

SELECT * FROM OrdenSeries
WHERE orden limit 3

-- (3) 

select titulo, año_lanzamiento,
row_number() over (order by año_lanzamiento desc) as clasificacion_global
from series
