-- Ejercicios practicos de Procedimientos almacenados
-- Practical exercises on stored procedures

-- (1)

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


-- (2)


DELIMITER //

CREATE PROCEDURE AgregarDepartamento ( IN _nombre VARCHAR(255), IN _ubicacion VARCHAR(255))
BEGIN
	INSERT INTO departamentos (nombre,ubicacion) values(_nombre , _ubicacion);
END //

DELIMITER ;



CALL AgregarDepartamento('Desarrollo de software', 'Edificio de nuevas tegnologias')


SELECT * FROM empresadb.departamentos;
