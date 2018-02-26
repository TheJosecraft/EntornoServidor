<% @ CODEPAGE = 65001 %>
    <!-- #include file ="../funciones.asp" -->
    <!-- #include file ="../../clases/conexion.asp" -->
    <!-- #include file ="../../clases/actividad.asp" -->
    <% sesiones(0) %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Insertar Actividad</title>
        <% get_header() %>
    </head>

    <body>
        <% menu("actividades") %>
            <div id="wrapper" class="toggled">
                <% menu("actividades") %>
                    <div id="page-content-wrapper">
                        <div class="container-fluid h-100">
                            <div class="row h-100">
                                <div class="col-12">
                                        <form action="#" method="post">
                                            <div class="form-group">
                                                <label for="nombre">Nombre</label>
                                                <input class="form-control" type="text" name="nombre" id="nombre">
                                            </div>
                                            <div class="form-group">
                                                <label for="desc">Descripción</label>
                                                <input class="form-control" type="text" name="desc" id="desc">
                                            </div>
                                            <div class="form-group">
                                                <label for="duracion">Duración</label>
                                                <input class="form-control" type="text" name="duracion" id="duracion">
                                            </div>
                                            <div class="form-group">
                                                <label for="precio">Precio</label>
                                                <input class="form-control" type="text" name="precio" id="precio">
                                            </div>
                                            <input class="btn btn-success" type="submit" name="enviar" id="insertarActividad">
                                        </form>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
        <%
	if Request.Form("enviar") = "Enviar" then
		set act = new Actividad
		act.setNombre(Request.Form("nombre"))
		act.setDesc(Request.Form("desc"))
		act.setDuracion(Request.Form("duracion"))
		act.setPrecio(Request.Form("precio"))

		act.insertarActividad()

	end if
	%>
    </body>

    </html>