<% @ CODEPAGE = 65001 %>
    <!-- #include file ="../funciones.asp" -->
    <!-- #include file ="../../clases/conexion.asp" -->
    <!-- #include file ="../../clases/cliente.asp" -->
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
                                <h1>Menu</h1>
                                <% response.write("Bienvenido, " & Session("id_usuario")) %>
                                    <%
										set ObjUsuario = new Cliente
										ObjUsuario.setNombre("Jose")
										ObjUsuario.setDireccion("Avenida de la Constitución")
										ObjUsuario.setTelefono("957655755")
										ObjUsuario.setContra("jose")

										ObjUsuario.modificar(5)

										dim lista
										lista = request.queryString("lista") 
										if lista then
											ObjUsuario.getAll()
										else
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