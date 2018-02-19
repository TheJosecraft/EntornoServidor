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
	<br>
	<% 
	set ObjUsuario = new Cliente
	ObjUsuario.setNombre("Jose")
	ObjUsuario.setDireccion("Avenida de la Constitución")
	ObjUsuario.setTelefono("957655755")
	ObjUsuario.setContra("jose")

	ObjUsuario.modificar(5)

	dim lista
	lista = request.queryString("lista") 
	if lista then
		ObjUsuario.getAll()
	end if
	%>
</body>
</html>