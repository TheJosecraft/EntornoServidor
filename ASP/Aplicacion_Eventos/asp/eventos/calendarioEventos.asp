<% @ CODEPAGE = 65001 %>
<!-- #include file ="../funciones.asp" -->
<!--#include file="../../clases/calendario.asp"-->
<% sesiones() %> 
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Calendario</title>
	<% get_header() %>
</head>
<body>
	<div id="wrapper" class="toggled">
        <% menu("eventos") %>
            <div id="page-content-wrapper">
                <div class="container-fluid h-100">
                    <div class="row h-100">
                        <div class="col-12">
                            <% response.write("Bienvenido, " & Session("id_usuario")) %>
                            <%
							Set myCal = New Calendar 
							mycal.border=false 'Display Border around Calendar 
							mycal.value = Now 'Sets Current Date 
							mycal.calMonth = month(date()) 'Sets Current Month 
							mycal.calYear = year(date()) 'Sets Current Year 
							mycal.showDate = True 'Not yet implemented 
							mycal.showNav =True 'Show prev and next Navigation Links 
							mycal.showForm = True 'Show Month and Year form 
							mycal.display 'Display Calendar 
							%>
                        </div>
                    </div>
                </div>
            </div>
    </div>
</body>
<% get_footer() %>
</html>