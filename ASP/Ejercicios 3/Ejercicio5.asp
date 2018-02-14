<!-- Programar una página en ASP que utilizando una lista desplegable deje al usuario elegir
qué tabla de multiplicar quiere visualizar. Además le dejará elegir (utilizando un
conjunto de tipo radio) en qué color quiere visualizarla. Después, la página Web le
mostrará dicha tabla de multiplicar utilizando el color elegido por el usuario -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Ejercicio 5</title>
</head>
<body>
	<form action="#" method="post">
		<label>Tablas de multiplicar</label>
		<br>
		<select name="tabla">
			<option value="1">Tabla del 1</option>
			<option value="2">Tabla del 2</option>
			<option value="3">Tabla del 3</option>
			<option value="4">Tabla del 4</option>
			<option value="5">Tabla del 5</option>
			<option value="6">Tabla del 6</option>
			<option value="7">Tabla del 7</option>
			<option value="8">Tabla del 8</option>
			<option value="9">Tabla del 9</option>
			<option value="10">Tabla del 10</option>
		</select>
		<br>
		<label>Color</label>
		<br>
		<label>Verde</label>
		<input type="radio" name="color" value="palegreen">
		<label>Azul</label>
		<input type="radio" name="color" value="cyan">
		<br>
		<input type="submit" name="enviar">
	</form>
	<br>
	<% 
	tabla = cint(request.form("tabla")) 
	color = request.form("color")
	%>


	<table border="1" style="background-color: <% response.write(color) %>">
		<thead>
			<tr>
				<th>Operación</th>
				<th>Resultado</th>
			</tr>
		</thead>
		<tbody>
			<% for i = 1 to 10
			response.write("<tr>")
			response.write("<td>" & tabla & " * " & i &"</td>")
			response.write("<td>" & tabla * i & "</td>")
			response.write("</tr>")
			next
			%>
		</tbody>
	</table>
	
</body>
</html>