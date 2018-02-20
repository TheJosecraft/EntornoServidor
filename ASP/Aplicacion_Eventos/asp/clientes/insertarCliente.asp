<% @ CODEPAGE = 65001 %>
<!-- #include file ="../funciones.asp" -->
<!-- #include file ="../../clases/cliente.asp" -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Insertar cliente</title>
	<% get_header() %>
</head>
<body>
	<% menu("clientes") %>
	<form action="#" method="post">
		<label for="nombre">Nombre</label>
		<input type="text" name="nombre" id="nombre">
		<br>
		<label for="telefono">Telefono</label>
		<input type="text" name="telefono" id="telefono">
		<br>
		<label for="direccion">Dirección</label>
		<input type="text" name="direccion" id="direccion">
		<br>
		<label for="contra">Contraseña</label>
		<input type="text" name="contra" id="contra">
		<br>
		<input type="submit" name="enviar" id="insertarCliente">
	</form>
	<%
	if Request.Form("enviar") = "Enviar" then
		response.write("Hola")
		set c = new Cliente
		c.setNombre(request.form("nombre"))
		c.setTelefono(request.form("telefono"))
		c.setDireccion(request.form("direccion"))
		c.setContra(request.form("contra"))

		c.insertarCliente()
	end if
	
	%>
</body>
</html>