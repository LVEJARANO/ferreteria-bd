-- Selecciona unicamente el id y el nombre del rol
DELIMITER //
CREATE PROCEDURE spSelectRolesDDL()
BEGIN
	select rol_id,rol_nombre
    from tbl_rol;
END//
DELIMITER ;