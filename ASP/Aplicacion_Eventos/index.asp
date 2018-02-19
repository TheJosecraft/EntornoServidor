<% @ CODEPAGE = 65001 %>
<!-- #include file ="clases/conexion.asp" -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Acceder</title>
</head>
<body>
	<form action="#" method="post">
		<label for="usuario">Usuario</label>
		<br>
		<input type="text" name="usuario" id="usuario">
		<br>
		<label for="">Contraseña</label>
		<br>
		<input type="text" name="password" id="password">
		<br>
		<br>
		<input type="submit">
	</form>
	<%
	usuario = request.form("usuario")
	password = request.form("password")
	set ObjConexion = new Conexion
	ObjConexion.Conectar()
	set datos = ObjConexion.consultar("select * from cliente where nombre = '" & usuario & "' and contra = '" & password & "'")
	do while not datos.eof
		if usuario = datos("nombre") AND password = datos("contra") then
			Session("id_usuario") = datos("codigo")
			response.redirect "asp/aplicacion.asp"
		end if
		datos.moveNext
	loop
	ObjConexion.cerrarConexion()

	%>
</body>
</html>