-- Ejercicios practicos de CREATE VIEW
-- CREATE VIEW practical exercises }

-- 1

create view VisataEmpleadosTecnologia as 
select nombre,apellido, email
from empleados
where depto_id = 1; 

select * from visataempleadostecnologia

-- 2

create view VisataEmpleadosProyectos as
select e.nombre, e.apellido, p.nombre as nombre_proyecto
from empleados e
join asignacionesdeproyectos a on a.empleado_id = e.empleado_id
join proyectos p on a.proyecto_id = p.proyecto_id

select * from VisataEmpleadosProyectos
