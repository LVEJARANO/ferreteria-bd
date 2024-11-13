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

-- Actualizar un Permiso 
DELIMITER //
CREATE PROCEDURE spUpdatePermission(IN p_id INT,IN p_name VARCHAR(45),IN p_description VARCHAR(80))
BEGIN
    update tbl_permiso
    set per_nombre = p_name, per_descripcion = p_description
    where per_id = p_id;
END//
DELIMITER ;

-- Borrar un Permiso 
DELIMITER //
CREATE PROCEDURE spDeletePermission(IN p_id INT)
BEGIN
    delete from tbl_permiso where per_id = p_id;
END//
DELIMITER ;