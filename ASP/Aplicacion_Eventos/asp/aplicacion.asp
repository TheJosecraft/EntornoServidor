<!-- #include file ="funciones.asp" -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Aplicación</title>
</head>
<body>
	<% response.write("Bienvenido, " & Session("id_usuario")) %> 
	<h1>Menú</h1>
	<% menu("aplicacion") %>
</body>
</html>