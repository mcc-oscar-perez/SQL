-- Ejercicio practico de CASE
-- CASE practical exercise 

select titulo,
case
    when año_lanzamiento < 2010 then 'Antigua'
    else 'Reciente'
    end Antigüedad
from Series