<!-- 4. Codificar una página en ASP que contenga el día, el mes y el año de
nacimiento de una persona. La página deberá mostrar por pantalla si
dicha persona es o no mayor de edad. En caso de que hoy sea su
cumpleaños, se mostrará una felicitación
 -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Ejercicio 4</title>
</head>
<body>
	<%
	fecha = CDate("09/02/2001")
	hoy = date()

	anios = dateadd("yyyy", -18, hoy)

	if anios > fecha then 
		response.write("Eres mayor de edad <br>")
	else
		response.write("No eres mayor de edad <br>")
	end if

	diaCum = day(fecha)
	mesCum = month(fecha)

	if diaCum = day(hoy) AND mesCum = month(hoy) then
		response.write("Felicidades, es tu cumpleaños <br>")
	end if

	%>
</body>
</html>