<!-- Programar una página en ASP que pida al usuario 3 números y muestre la siguiente
tabla:
Valor 1
Valor 2
Valor 3
valor1 + valor2
valor2 * valor3
valor1 / valor3
valor1 + valor2 + valor3
(valor2 + valor3) / valor1 -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Ejercicio 3</title>
</head>
<body>
	<form action="#" method="post">
		<label>Número 1</label>
		<input type="number" name="numero1">
		<br>
		<label>Número 2</label>
		<input type="number" name="numero2">
		<br>
		<label>Número 3</label>
		<input type="number" name="numero3">
		<br>
		<input type="submit" name="enviar">
	</form>
	<br>
	<%

	valor1 = cint(request.Form("numero1"))
	valor2 = cint(request.Form("numero2"))
	valor3 = cint(request.Form("numero3"))

	%>
	<table border="1">
		<thead>
			<tr>
				<th>Operación</th>
				<th>Resultado</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Valor 1</td>
				<td><% response.write(valor1) %></td>
			</tr>
			<tr>
				<td>Valor 2</td>
				<td><% response.write(valor2) %></td>
			</tr>
			<tr>
				<td>Valor 3</td>
				<td><% response.write(valor3) %></td>
			</tr>
			<tr>
				<td>Valor1 + Valor2</td>
				<td><% response.write(valor1 + valor2) %></td>
			</tr>
			<tr>
				<td>Valor2 * Valor3</td>
				<td><% response.write(valor2 * valor3) %></td>
			</tr>
			<tr>
				<td>Valor1 / Valor3</td>
				<td><% response.write(valor1 / valor3) %></td>
			</tr>
			<tr>
				<td>Valor1 + Valor2 + Valor3</td>
				<td><% response.write(valor1 + valor2 + valor3) %></td>
			</tr>
			<tr>
				<td>(Valor2 + Valor3) / Valor1</td>
				<td><% response.write((valor2 + valor3) / valor1) %></td>
			</tr>
		</tbody>
	</table>
</body>
</html>