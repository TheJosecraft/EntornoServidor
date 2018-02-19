<% @ CODEPAGE = 65001 %>
<!-- #include file ="../funciones.asp" -->
<!-- #include file ="../../clases/evento.asp" -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Insertar Evento</title>
</head>
<body>
	<% menu("eventos") %>
	<form action="#" method="post">
		<label for="actividad">Actividad</label>
		<input type="text" name="actividad" id="actividad">
		<br>
		<label for="cliente">Cliente</label>
		<input type="text" name="cliente" id="cliente">
		<br>
		<label for="fechaContrato">Fecha de Contratación</label>
		<input type="date" name="fechaContrato" id="fechaContrato">
		<br>
		<label for="fechaEvento">Fecha de Evento</label>
		<input type="date" name="fechaEvento" id="fechaEvento">
		<br>
		<input type="submit" name="enviar" id="insertarCliente">
	</form>
	<%
	'set e1 = new Evento
	'e1.setFechaContrato("19/02/2018")

	if Request.Form("enviar") = "Enviar" then
		set e = new Evento
		' e.setFechaContrato(request.form("fechaContrato"))
		' response.write(e.getFechaContrato & "<br>")
		e.setActividad(request.form("actividad"))
		e.setCliente(request.form("cliente"))
		e.setFechaContrato(request.form("fechaContrato"))
		e.setFechaEvento(request.form("fechaEvento"))

		e.insertarEvento()
	end if
	
	%>
</body>
</html>