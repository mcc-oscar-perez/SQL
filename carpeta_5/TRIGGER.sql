-- Ejercicios practicos de TRIGGER
-- TRIGGER practical exercises 

-- cramos el trigge

DELIMITER $$

create trigger RegistrarNuevoEmpleado
after insert on empleados
for each row 
begin
	insert into LogEmpleados (empleado_id, fecha_registro) 
    values (new.empleado_id, now());
end$$

DELIMITER ; 


-- Probamos el funcionamiento del trigger

insert into empleados (nombre, apellido, email) values ('juan','Hernandez', 'juan.hernandez@example.com') 

select * from LogEmpleados