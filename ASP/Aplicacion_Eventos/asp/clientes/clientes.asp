<% @ CODEPAGE = 65001 %>
    <!-- #include file ="../funciones.asp" -->
    <!-- #include file ="../../clases/conexion.asp" -->
    <!-- #include file ="../../clases/actividad.asp" -->
    <!-- #include file ="../../clases/cliente.asp" -->
    <% sesiones() %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Clientes</title>
        <% get_header() %>
    </head>

    <body>
        <div id="wrapper" class="toggled">
            <% menu("clientes") %>
                <div id="page-content-wrapper">
                    <div class="container-fluid h-100">
                        <div class="row h-100">
                            <div class="col-12">
                                
                                    <%
										set ObjUsuario = new Cliente
										ObjUsuario.setNombre("Jose")
										ObjUsuario.setDireccion("Avenida de la Constitución")
										ObjUsuario.setTelefono("957655755")
										ObjUsuario.setContra("jose")

										ObjUsuario.modificar(5)

										dim lista
                                        lista = request.queryString("lista") 
										factura = request.queryString("factura") 
										if lista then
                                            response.write("<h1>Lista de clientes</h1>")
											ObjUsuario.getAll()
										end if
                                            
                                        if factura then
                                            response.write("<h1>Factura de " & ObjUsuario.getNombreById(Session("id_usuario")) & "</h1>")
                                            ObjUsuario.getFactura(Session("id_usuario"))
                                        end if
									%>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
        <br>
    </body>

    </html>