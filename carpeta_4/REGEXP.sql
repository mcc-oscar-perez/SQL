-- Ejercicios practicos de REGEXP
-- REGEXP Practice Exercises

-- (1)

select titulo, descripcion 
from series
where descripcion regexp '(?i)un'

-- (2)

select titulo, descripcion
from series
where descripcion regexp '^A'

-- (3) 

select titulo, descripcion
from series
where descripcion regexp 'a$'

-- (4) 

select titulo, descripcion
from series 
where descripcion regexp 'banda'




