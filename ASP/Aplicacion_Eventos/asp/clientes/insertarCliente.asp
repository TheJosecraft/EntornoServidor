<% @ CODEPAGE = 65001 %>
    <!-- #include file ="../funciones.asp" -->
    <!-- #include file ="../../clases/conexion.asp" -->
    <!-- #include file ="../../clases/cliente.asp" -->
    <% sesiones(0) %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Insertar cliente</title>
        <% get_header() %>
    </head>

    <body>
        <div id="wrapper" class="toggled">
            <% menu("clientes") %>
                <div id="page-content-wrapper">
                    <div class="container-fluid h-100">
                        <div class="row h-100">
                            <div class="col-12">
                            	<h1>Insertar nuevo cliente</h1>
                                    <form action="#" method="post">
                                        <div class="form-group">
                                            <label for="nombre">Nombre</label>
                                            <input class="form-control" type="text" name="nombre" id="nombre">
                                        </div>
                                        <div class="form-group">
                                            <label for="telefono">Telefono</label>
                                            <input class="form-control" type="text" name="telefono" id="telefono">
                                        </div>
                                        <div class="form-group">
                                            <label for="direccion">Dirección</label>
                                            <input class="form-control" type="text" name="direccion" id="direccion">
                                        </div>
                                        <div class="form-group">
                                            <label for="contra">Contraseña</label>
                                            <input class="form-control" type="password" name="contra" id="contra">
                                        </div>
                                        <input class="btn btn-success" type="submit" name="enviar" id="insertarCliente">
                                    </form>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
        <%
	if Request.Form("enviar") = "Enviar" then
		response.write("Hola")
		set c = new Cliente
		c.setNombre(request.form("nombre"))
		c.setTelefono(request.form("telefono"))
		c.setDireccion(request.form("direccion"))
		c.setContra(request.form("contra"))

		c.insertarCliente()
	end if
	
	%>
    </body>
    <% get_footer() %>

    </html>