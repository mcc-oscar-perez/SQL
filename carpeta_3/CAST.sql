-- Ejercicio practico de CAST
-- CAST practical exercise 

SELECT titulo, 
       CAST(año_lanzamiento AS TEXT) AS "Año de Lanzamiento"
FROM Series