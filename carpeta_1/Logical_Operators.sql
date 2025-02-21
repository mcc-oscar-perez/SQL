-- Ejercicio practico con operadores logicos
-- Practical exercise with logical operators

select *
from Series
where genero = 'Drama' or genero = 'Ciencia ficción'


select * 
from Series
where genero NOT IN ('Drama','Drama histórico')