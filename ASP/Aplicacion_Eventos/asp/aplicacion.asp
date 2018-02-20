<!-- #include file ="funciones.asp" -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Aplicación</title>
	<link rel="stylesheet" href="../css/bootstrap.min.css">
	<link rel="stylesheet" href="../css/main.css">
</head>
<body>
	<div class="container-fluid h-100">
		<div class="row h-100">
			<div class="col-2 bg-dark">
				<% menu("aplicacion") %>
			</div>
			<div class="col-md-10">
				<% response.write("Bienvenido, " & Session("id_usuario")) %> 
			</div>
		</div>
	</div>
</body>
</html>