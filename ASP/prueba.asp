<% @CODEPAGE = 65001 %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Conexion BBDD</title>
</head>
<body>
	<%
		set conexion = server.createObject("ADODB.Connection")

		conexion.open("bd")

		consulta = "select * from alumnos"

		set datos = conexion.Execute(consulta)

		Do while not datos.Eof
			response.write(datos("id") & " " & datos("nombre") & " " & datos("edad"))
			response.write("<br>")
			datos.moveNext
		loop

		conexion.close

	%>
</body>
</html>