<!-- #include file ="../../clases/conexion.asp" -->
<!-- #include file ="../../clases/evento.asp" -->
<% sesiones() %>
<%
set eve = new Evento

eve.borrarEvento(request.queryString("id"))

response.redirect("eventos.asp?lista=true")
%>