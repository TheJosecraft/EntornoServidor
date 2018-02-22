<% @ CODEPAGE = 65001 %>
<!-- #include file ="../funciones.asp" -->
<!-- #include file ="../../clases/conexion.asp" -->
<!-- #include file ="../../clases/actividad.asp" -->
<!-- #include file ="../../clases/cliente.asp" -->
<!-- #include file ="../../clases/evento.asp" -->
<!--#include file="../../clases/calendario.asp"-->
<% sesiones(1) %> 
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
                            <%
							Set miCal = New Calendar 
							miCal.value = Now 'Sets Current Date 
							miCal.calMonth = month(date()) 'Sets Current Month 
							miCal.calYear = year(date()) 'Sets Current Year 
							miCal.showDate = True 'Not yet implemented 
							miCal.showNav =True 'Show prev and next Navigation Links 
							miCal.showForm = True 'Show Month and Year form 
							miCal.display 'Display Calendar 

							eventos = request.queryString("eventos")

							if eventos then
								set eve = new Evento

								dia = request.queryString("dia")
								mes = request.queryString("currMonth")
								anio = request.queryString("currYear")

								fecha = dia & "/" & mes & "/" & anio
								fecha = cdate(fecha)

								eve.getByFechaEvento(fecha)
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