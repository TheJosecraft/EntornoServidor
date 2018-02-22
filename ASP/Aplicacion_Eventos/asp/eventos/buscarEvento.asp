<% @ CODEPAGE = 65001 %>
<!-- #include file ="../funciones.asp" -->
<!-- #include file ="../../clases/conexion.asp" -->
<!-- #include file ="../../clases/actividad.asp" -->
<!-- #include file ="../../clases/cliente.asp" -->
<!-- #include file ="../../clases/evento.asp" -->
<% sesiones() %>
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
                        	<h1>Búsqueda</h1>
                        	<form method="get" action="#">
	                        	<div class="input-group mb-3">
								<input type="text" class="form-control" placeholder="Buscar evento" name="busqueda" aria-label="Recipient's username" aria-describedby="basic-addon2">
								  <div class="input-group-append">
								    <button class="btn btn-primary" type="submit"><i class="fas fa-search"></i></button>
								  </div>
								</div>
                        	</form>
                            <% 
                            	busqueda = request.queryString("busqueda")
                                set eve = new Evento
                                eve.buscarEvento(busqueda)
                            %>
                        </div>
                    </div>
                </div>
            </div>
    </div>
</body>
</html>