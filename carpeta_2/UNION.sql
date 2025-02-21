-- Ejercicio practico de UNION ALL
-- UNION ALL practical exercise 

-- Ejercicio 1
-- Exercise 1

select * 
from Series 
where genero = 'Ciencia ficción'

union all 

select * 
from Series 
where genero = 'Drama'


-- Ejercicio 2
-- Exercise 2

select titulo 
from Episodios
where duracion > 20 

union 

select titulo 
from Episodios
where duracion > 9 
