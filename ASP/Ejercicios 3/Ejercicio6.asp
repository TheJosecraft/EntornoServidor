<!-- Hacer un sitio Web que controle el número de veces que accede un determinado
navegador a su contenido. Cada vez que se acceda al sitio Web, éste deberá mostrar un
mensaje indicando cuántas veces se ha visitado el sitio Web. -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Ejercicio 6</title>
</head>
<body>
	<%
	i = request.cookies("accesos")
	i = i + 1
	Response.cookies("accesos") = i
	response.write("Has visitado este sitio " & request.cookies("accesos") & " veces")
	%>
</body>
</html>