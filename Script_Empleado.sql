-- Selecciona unicamente el id y el nombre del empleado
DELIMITER //
CREATE PROCEDURE spSelectEmployeesDDL()
BEGIN
	select emp_id,concat(emp_nombres,' ',emp_apellidos) as nombre
    from tbl_empleado;
END//
DELIMITER ;