-- Ejercicios practicos de CREATE VIEW
-- CREATE VIEW practical exercises }

-- 1

create view VisataEmpleadosTecnologia as 
select nombre,apellido, email
from empleados
where depto_id = 1; 

select * from visataempleadostecnologia