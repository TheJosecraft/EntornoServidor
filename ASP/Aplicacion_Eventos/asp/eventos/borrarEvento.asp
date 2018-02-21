<!-- #include file ="../../clases/conexion.asp" -->
<!-- #include file ="../../clases/evento.asp" -->
<%
set eve = new Evento

eve.borrarEvento(request.queryString("id"))

response.redirect("eventos.asp?lista=true")
%>