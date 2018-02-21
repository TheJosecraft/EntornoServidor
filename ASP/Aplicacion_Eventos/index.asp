<% @ CODEPAGE = 65001 %>
<!-- #include file ="clases/conexion.asp" -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Acceder</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/fontawesome-all.min.css">
	<link rel="stylesheet" href="css/main.css">
</head>
<body>
<div class="back">
	<div class="div-center">
		<div class="content">
			<h3>Acceder</h3>
			<hr>
			<form action="#" method="post">
				<div class="form-group">	
					<label for="usuario">Usuario</label>
					<input class="form-control" type="text" name="usuario" id="usuario">
				</div>
				<div class="form-group">	
					<label for="password">Contraseña</label>
					<input class="form-control" type="text" name="password" id="password">
				</div>
				<button type="submit" name="enviar" value="Acceder" class="btn btn-primary">Acceder <i class="fas fa-sign-in-alt"></i></button>
			</form>
			<br>
			<%
			usuario = request.form("usuario")
			password = request.form("password")
			set ObjConexion = new Conexion
			ObjConexion.Conectar()
			set datos = ObjConexion.consultar("select * from cliente where nombre = '" & usuario & "' and contra = '" & password & "'")
			if Request.Form("enviar") = "Acceder" then
				if datos.eof then %>
					<div class="alert alert-danger" role="alert">
					  Los datos no son correctos
					</div>
				<%
				end if
			end if

			do while not datos.eof
				if usuario = datos("nombre") AND password = datos("contra") then
					Session("id_usuario") = datos("codigo")
					response.redirect "asp/aplicacion.asp"
				end if
				datos.moveNext
			loop
			ObjConexion.cerrarConexion()

			%>
	</div>
</div>	
	
</body>
</html>