<!-- #include file ="../funciones.asp" -->
<!-- #include file ="../../clases/conexion.asp" -->
<!-- #include file ="../../clases/evento.asp" -->
<% sesiones(0) %>
<%
set eve = new Evento

eve.borrarEvento(request.queryString("id"))

response.redirect("eventos.asp?lista=true")
%>