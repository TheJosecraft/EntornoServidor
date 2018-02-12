<!-- Programar una página en ASP que a través de formularios pida al usuario su nombre y le
muestre un saludo personalizado.
 -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Ejercicio 2</title>
</head>
<body>
	<form action="#" method="post">
		<label>Nombre</label>
		<input type="text" name="nombre">
		<br>
		<input type="submit" name="enviar">
	</form>

	<%
	nombre = request.Form("nombre")

	response.write("Bienvenido " & nombre)

	%>
</body>
</html>