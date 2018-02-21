<% @ CODEPAGE = 65001 %>
<!-- #include file ="../funciones.asp" -->
<!-- #include file ="../../clases/conexion.asp" -->
<!-- #include file ="../../clases/actividad.asp" -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Actividades</title>
	<% get_header() %>
</head>
<body>
	<div id="wrapper" class="toggled">
        <% menu("actividades") %>
            <div id="page-content-wrapper">
                <div class="container-fluid h-100">
                    <div class="row h-100">
                        <div class="col-12">
                        	<h1>Lista de actividades</h1>
                            <% response.write("Bienvenido, " & Session("id_usuario"))
                            lista = request.queryString("lista")

							if lista then
								set act = new Actividad
								act.getAll()
							end if
							%>

                        </div>
                    </div>
                </div>
            </div>
    </div>
</body>
<% get_footer() %>
</html>