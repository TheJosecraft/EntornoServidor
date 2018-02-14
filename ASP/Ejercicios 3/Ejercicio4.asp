<!-- Programar una página en ASP que a través de formularios pida al usuario su nombre y su
día, mes y año de nacimiento. La página le dirá al usuario si es mayor de edad o no lo es. -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Ejercicio 4</title>
</head>
<body>
	<form action="#" method="post">
		<label>Nombre</label>
		<input type="text" name="nombre">
		<br>
		<label>Día</label>
		<input type="text" name="dia">
		<br>
		<label>Mes</label>
		<input type="text" name="mes">
		<br>
		<label>Año</label>
		<input type="text" name="anio">
		<br>
		<input type="submit" name="enviar">
	</form>
	<%

	dia = request.form("dia")
	mes = request.form("mes")
	anio = request.form("anio")

	nacimiento = dia & "/" & mes & "/" & anio

	fecha = CDate(nacimiento)
	hoy = date()

	anios = dateadd("yyyy", -18, hoy)

	if anios > fecha then 
		response.write("Eres mayor de edad <br>")
	else
		response.write("No eres mayor de edad <br>")
	end if

	%>
</body>
</html>