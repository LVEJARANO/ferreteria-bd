-- Insertar un usuario
DELIMITER //
create procedure spInsertUser(IN p_correo VARCHAR(80),IN p_contrasena TEXT,
IN p_salt TEXT,IN p_estado VARCHAR(15),IN p_fecha_creacion DATE,IN p_fkrol INT,IN p_fkempleado INT)
begin
	insert into tbl_usuario(usu_correo,usu_contrasena,usu_salt,usu_estado,usu_fecha_creacion,
    tbl_rol_rol_id,tbl_empleado_emp_id) 
    values(p_correo,p_contrasena,p_salt,p_estado,p_fecha_creacion,p_fkrol,p_fkempleado);
end//
DELIMITER ;

-- Actualizar un usuario
DELIMITER //
create procedure spUpdateUser(IN p_id INT,IN p_correo VARCHAR(80),IN p_contrasena TEXT,
IN p_salt TEXT,IN p_estado VARCHAR(15),IN p_fecha_creacion DATE,IN p_fkrol INT,IN p_fkempleado INT)
begin
	update tbl_usuario
    set usu_correo=p_correo,usu_contrasena=p_contrasena,usu_salt=p_salt,usu_estado=p_estado,usu_fecha_creacion=p_fecha_creacion,
    tbl_rol_rol_id=p_fkrol,tbl_empleado_emp_id=p_fkempleado
    where usu_id = p_id;
end//
DELIMITER ;

-- Mostrar todos los usuarios
DELIMITER //
create procedure spSelectUsers()
begin
	select usu_id,usu_correo,usu_contrasena,usu_salt,usu_estado,usu_fecha_creacion,
    tbl_rol_rol_id,tbl_rol.rol_nombre,tbl_empleado_emp_id,tbl_empleado.emp_nombres,
    tbl_empleado.emp_apellidos
    from tbl_usuario
    INNER JOIN tbl_rol
	ON tbl_usuario.tbl_rol_rol_id = tbl_rol.rol_id
	INNER JOIN tbl_empleado
	ON tbl_usuario.tbl_empleado_emp_id = tbl_empleado.emp_id;
end//
DELIMITER ;

-- Eliminar un usuario
DELIMITER //
create procedure spDeleteUser(IN p_id INT)
begin
	delete from tbl_usuario where usu_id = p_id;
end//
DELIMITER ;
