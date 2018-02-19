<!-- #include file ="../funciones.asp" -->
<!-- #include file ="../../clases/cliente.asp" -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Clientes</title>
</head>
<body>
	<h1>Menu</h1>
	<% menu("clientes") %>
	<% 
	set ObjUsuario = new Cliente
	ObjUsuario.setNombre("Jose")
	ObjUsuario.getById(2)
	dim lista
	lista = request.queryString("lista") 
	if lista then
		response.write("Hola")
	end if
	%>
</body>
</html>