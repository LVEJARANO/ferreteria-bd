-- Selecciona unicamente el id y el nombre del empleado
DELIMITER //
CREATE PROCEDURE spSelectEmployeesDDL()
BEGIN
	select emp_id,concat(emp_nombres,' ',emp_apellidos) as nombre
    from tbl_empleado;
END//
DELIMITER ;

-- Cuenta cuantos empleados existen
DELIMITER //
CREATE PROCEDURE spSelectCountEmployees(OUT total_empleados INT)
BEGIN
    SELECT COUNT(emp_id) INTO total_empleados
    FROM tbl_empleado;
END//
DELIMITER ;
