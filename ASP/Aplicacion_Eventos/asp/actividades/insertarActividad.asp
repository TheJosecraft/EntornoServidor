<% @ CODEPAGE = 65001 %>
<!-- #include file ="../funciones.asp" -->
<!-- #include file ="../../clases/actividad.asp" -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Insertar Actividad</title>
</head>
<body>
	<form action="#" method="post">
		<label for="nombre">Nombre</label>
		<input type="text" name="nombre" id="nombre">
		<br>
		<label for="desc">Descripción</label>
		<input type="text" name="desc" id="desc">
		<br>
		<label for="duracion">Duración</label>
		<input type="text" name="duracion" id="duracion">
		<br>
		<label for="precio">Precio</label>
		<input type="text" name="precio" id="precio">
		<br>
		<input type="submit" name="enviar" id="insertarActividad">
	</form>
	<%
	if Request.Form("enviar") = "Enviar" then
		set act = new Actividad
		act.setNombre(Request.Form("nombre"))
		act.setDesc(Request.Form("desc"))
		act.setDuracion(Request.Form("duracion"))
		act.setPrecio(Request.Form("precio"))

		act.insertarActividad()

	end if
	%>
</body>
</html>