<!-- #include file ="../funciones.asp" -->
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
                            <% response.write("Bienvenido, " & Session("id_usuario")) %>
                        </div>
                    </div>
                </div>
            </div>
    </div>
</body>
</html>