-- Ejercicio practico de IF
-- IF practical exercise 

select titulo,
IF(año_lanzamiento >= 2010, 'Reciente','Antigua') as 'Antigüedad'
from Series

