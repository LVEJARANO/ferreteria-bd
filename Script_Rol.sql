-- Selecciona unicamente el id y el nombre del rol
DELIMITER //
CREATE PROCEDURE spSelectRolesDDL()
BEGIN
	select rol_id,rol_nombre
    from tbl_rol;
END//
DELIMITER ;

-- Insertar un Rol 
DELIMITER //
CREATE PROCEDURE spInsertRol(IN p_name VARCHAR(45), p_description VARCHAR(80))
BEGIN
    insert into tbl_rol(rol_nombre,rol_descripcion) values(p_name,p_description);
END//
DELIMITER ;