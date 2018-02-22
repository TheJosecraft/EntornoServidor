<% @ CODEPAGE = 65001 %>
<!-- #include file ="../funciones.asp" -->
<!-- #include file ="../../clases/conexion.asp" -->
<!-- #include file ="../../clases/actividad.asp" -->
<% sesiones() %>
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
                            <form method="get" action="#">
                                <div class="input-group mb-3">
                                <input type="text" class="form-control" placeholder="Buscar evento" name="busqueda" aria-label="Recipient's username" aria-describedby="basic-addon2">
                                <input type="hidden" class="form-control" placeholder="Buscar evento" name="buscar" value="true" aria-label="Recipient's username" aria-describedby="basic-addon2">
                                  <div class="input-group-append">
                                    <button class="btn btn-primary" type="submit"><i class="fas fa-search"></i></button>
                                  </div>
                                </div>
                            </form>
                            <% 
                            lista = request.queryString("lista")
                            buscar = request.queryString("buscar")
                            busqueda = request.queryString("busqueda")

							if lista then
								set act = new Actividad
								act.getAll()
                            elseif buscar then
                                set act = new Actividad
                                act.buscarActividad(busqueda)
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