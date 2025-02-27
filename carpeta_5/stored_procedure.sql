-- Ejercicios practicos de Procedimientos almacenados
-- Practical exercises on stored procedures

-- Creacion del procedimiento almacenado
-- Creating the stored procedure

DELIMITER //
 
CREATE PROCEDURE AgregarEmpleado(IN _nombre VARCHAR(255), IN _apellido VARCHAR(255), IN _email VARCHAR(255), IN _depto_id INT)
BEGIN 
	INSERT INTO Empleados(nombre, apellido, email, depto_id) VALUES (_nombre, _apellido, _email, _depto_id);
END //

DELIMITER ;

-- llamamos al procedimiento 
-- We call the procedure

CALL AgregarEmpleado('Elena', 'Torres', 'elena.torres@email.com', 3)



