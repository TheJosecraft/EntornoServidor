<% @ CODEPAGE = 65001 %>
<!-- #include file ="../funciones.asp" -->
<!-- #include file ="../../clases/conexion.asp" -->
<!-- #include file ="../../clases/actividad.asp" -->
<!-- #include file ="../../clases/cliente.asp" -->
<!-- #include file ="../../clases/evento.asp" -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Eventos</title>
	<% get_header() %>
</head>
<body>
	<div id="wrapper" class="toggled">
        <% menu("eventos") %>
            <div id="page-content-wrapper">
                <div class="container-fluid h-100">
                    <div class="row h-100">
                        <div class="col-12">
                        	<h1>Eventos</h1>
                            <% response.write("Bienvenido, " & Session("id_usuario")) 
                            lista = request.queryString("lista")
                            if lista then
                                set eve = new Evento
                                eve.getAll()
                            end if
                            %>
                        </div>
                    </div>
                </div>
            </div>
    </div>
</body>
</html>