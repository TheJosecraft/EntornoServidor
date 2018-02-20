<% @ CODEPAGE = 65001 %>
<!-- #include file ="../funciones.asp" -->
<!-- #include file ="../../clases/actividad.asp" -->
<%
set act = new Actividad

act.borrarActividad(request.queryString("id"))

response.redirect("actividades.asp?lista=true")
%>