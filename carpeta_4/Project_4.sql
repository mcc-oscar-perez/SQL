-- Proyecto practico para poner a prueba los conocimientos de la carpeta 4
-- Practical project to test the knowledge of folder 4

/* 
identificamos la serie más exitosa de la base de datos
NetflixDB usando CTEs

basándose en el número de episodios y el promedio
de sus calificaciones en IMDB

ordenado por 
columna 1 Nombre de la serie
columna 2 promedio de IMDB
columna 3 cantidad de capítulos

------ Instructions in english 

We identified the most successful series from the NetflixDB database
using CTEs

based on the number of episodes and the average
of their ratings on IMDB

sorted by
column 1 Series name
column 2 IMDB average
column 3 number of chapters
*/


with Calificaciones_CAP as ( 
	select 
    serie_id, 
    avg(rating_imdb) as Promedio, 
    count(episodio_id) as num_episodios
    from episodios
    group by serie_id
)

select s.titulo, C.num_episodios, C.Promedio 
from series s 
join Calificaciones_CAP C 
on s.serie_id = C.serie_id
order by C.Promedio desc

