<!-- Crear un script que presente al usuario un cuadro de selección de idioma, inglés y
español, en base a la opción elegida este será el idioma de nuestra web. Utiliza las
Cookies para que en futuras ocasiones se cargue al web en este idioma sin necesidad de
volver a elegir el idioma (el cuadro de selección ya no aparece). -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Ejercicio 7</title>
</head>
<body>
	<%
	idioma = request.cookies("idioma")

	if len(request.cookies("idioma")) < 1 then %>
	
	<form action="#" method="post">
		<select name="idioma">
			<option value="Español">Español</option>
			<option value="Inglés">Inglés</option>
		</select>
		<input type="submit" name="enviar">
	</form>
	<% 
	response.cookies("idioma") = request.form("idioma") 
	if len(request.Form("enviar")) > 0 then
		response.AddHeader "REFRESH", "1;URL=Ejercicio7.asp"
	end if
	else
		response.write("El idioma se ha establecido a " & idioma)
	end if
	%>
</body>
</html>