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

	response.write(usuario)
	response.write(password)

	set conexion = server.createObject("ADODB.Connection")

	conexion.open("bd")

	consulta = "select * from cliente where nombre = '" & usuario & "' and contra = '" & password & "'"

	set datos = conexion.Execute(consulta)
	do while not datos.eof

		response.write(datos("codigo"))
		datos.moveNext
	loop
	conexion.close

	%>
</body>
</html>