<!-- Programar una página en ASP que a través de formularios pida al usuario dos fechas
completas (día, mes y año) y le diga cuántos días han pasado entre una y la otra. -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Ejercicio 8</title>
</head>
<body>
	<form action="#" method="post">
		<label>Fecha 1</label>
		<input type="date" name="fecha1">
		<br>
		<label>Fecha 2</label>
		<input type="date" name="fecha2">
		<br>
		<input type="submit" name="enviar">
	</form>
	<%
	fecha1 = cdate(request.form("fecha1"))
	fecha2 = cdate(request.form("fecha2"))

	response.write(fecha1)
	response.write("<br>")
	response.write(fecha2)
	response.write("<br>")


	diferencia = datediff("d", fecha1, fecha2)
	response.write("Han pasado " & abs(diferencia) & " día(s)")
	%>
</body>
</html>