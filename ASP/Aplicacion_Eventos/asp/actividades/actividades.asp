<% @ CODEPAGE = 65001 %>
<!-- #include file ="../funciones.asp" -->
<!-- #include file ="../../clases/actividad.asp" -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Actividades</title>
</head>
<body>
	<h1>Menu</h1>
	<% menu("actividades") 
	lista = request.queryString("lista")

	if lista then
		set act = new Actividad
		act.getAll()
	end if
	%>


</body>
</html>