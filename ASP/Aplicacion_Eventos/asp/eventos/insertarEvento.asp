<% @ CODEPAGE = 65001 %>
    <!-- #include file ="../funciones.asp" -->
    <!-- #include file ="../../clases/evento.asp" -->
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
                                                <input class="form-control" type="text" name="actividad" id="actividad">
                                            </div>
                                            <div class="form-group">
                                                <label for="cliente">Cliente</label>
                                                <input class="form-control" type="text" name="cliente" id="cliente">
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
	'set e1 = new Evento
	'e1.setFechaContrato("19/02/2018")

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