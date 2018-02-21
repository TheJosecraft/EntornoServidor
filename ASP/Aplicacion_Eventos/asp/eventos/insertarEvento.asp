<% @ CODEPAGE = 65001 %>
    <!-- #include file ="../funciones.asp" -->
    <!-- #include file ="../../clases/conexion.asp" -->
    <!-- #include file ="../../clases/evento.asp" -->
    <!-- #include file ="../../clases/actividad.asp" -->
    <% sesiones() %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Insertar Evento</title>
        <% get_header() %>
    </head>

    <body>
        <% menu("eventos") %>
            <div id="wrapper" class="toggled">
                <% menu("eventos") %>
                    <div id="page-content-wrapper">
                        <div class="container-fluid h-100">
                            <div class="row h-100">
                                <div class="col-12">
                                    <% response.write("Bienvenido, " & Session("id_usuario")) %>
                                        <form action="#" method="post">
                                            <div class="form-group">
                                                <label for="actividad">Actividad</label>
                                                <select class="form-control" name="actividad" id="actividad">
                                                    <%
                                                    set ObjConexion = new Conexion
                                                    ObjConexion.Conectar()
                                                    set datos = ObjConexion.consultar("SELECT codigo, nombre FROM ACTIVIDAD")

                                                    do while not datos.eof %>
                                                        <option value="<%= datos("codigo") %>"><%= datos("nombre") %></option>

                                                    <% 
                                                    datos.moveNext
                                                    loop 
                                                    ObjConexion.cerrarConexion()
                                                    %>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="cliente">Cliente</label>
                                                <select class="form-control" name="cliente" id="cliente">
                                                    <%
                                                    set ObjConexion = new Conexion
                                                    ObjConexion.Conectar()
                                                    set datos = ObjConexion.consultar("SELECT codigo, nombre FROM CLIENTE")

                                                    do while not datos.eof %>
                                                        <option value="<%= datos("codigo") %>"><%= datos("nombre") %></option>

                                                    <% 
                                                    datos.moveNext
                                                    loop 
                                                    ObjConexion.cerrarConexion()
                                                    %>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="fechaContrato">Fecha de Contratación</label>
                                                <input class="form-control" type="date" name="fechaContrato" id="fechaContrato">
                                            </div>
                                            <div class="form-group">
                                                <label for="fechaEvento">Fecha de Evento</label>
                                                <input class="form-control" type="date" name="fechaEvento" id="fechaEvento">
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
		set e = new Evento
		' e.setFechaContrato(request.form("fechaContrato"))
		' response.write(e.getFechaContrato & "<br>")
		e.setActividad(request.form("actividad"))
		e.setCliente(request.form("cliente"))
		e.setFechaContrato(request.form("fechaContrato"))
		e.setFechaEvento(request.form("fechaEvento"))

		e.insertarEvento()
	end if
	
	%>
    </body>

    </html>