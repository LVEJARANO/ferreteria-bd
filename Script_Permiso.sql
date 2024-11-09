-- Selecciona todos los Permisos
DELIMITER //
CREATE PROCEDURE spSelectPermiso()
BEGIN
	select per_id,per_nombre,per_descripcion
    from tbl_permiso;
END//
DELIMITER ;

-- Selecciona unicamente el id y el nombre del permiso
DELIMITER //
CREATE PROCEDURE spSelectPermisosDDL()
BEGIN
	select per_id,per_nombre
    from tbl_permiso;
END//
DELIMITER ;

-- Insertar un Permiso
DELIMITER //
CREATE PROCEDURE spInsertPermiso(IN p_name VARCHAR(45), p_description VARCHAR(80))
BEGIN
    insert into tbl_permiso(per_nombre,per_descripcion) values(p_name,p_description);
END//
DELIMITER ;