-- Ejercicios practicos
-- Practical exercises

-- 1 
select 
E.nombre as 'Nombre Empleado',
E.apellido as 'Apellido Empleado',
P.nombre as 'Nombre Proyecto', 
A.horas_asignadas as 'Horas Asignadas'
from Empleados E
join AsignacionesDeProyectos A on E.empleado_id = A.empleado_id
join Proyectos P on P.proyecto_id = A.proyecto_id
order by E.nombre, A.horas_asignadas desc

-- 2
select 
D.nombre as 'Nombre Departamento',
SUM(AP.horas_asignadas) 'Total Horas Asignadas'

from Departamentos D 
join Empleados E 
on D.depto_id = E.depto_id
join AsignacionesDeProyectos AP 
on E.empleado_id = AP.empleado_id
group by D.Nombre
order by SUM(AP.horas_asignadas) desc


-- 3
select 
E.nombre as Nombre, 
E.apellido as Apellido, 
sum(A.horas_asignadas) as 'Horas trabajadas',
rank()
over(partition by E.depto_id order by sum(A.horas_asignadas) desc) as 'Ranking Departamental'
from Empleados E
join AsignacionesDeProyectos A
ON E.empleado_id = A.empleado_id
group by E.empleado_id, E.nombre, E.depto_id
order by E.depto_id, 'Ranking Departamental'







