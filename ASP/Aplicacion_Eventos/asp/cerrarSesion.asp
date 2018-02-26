<!-- #include file ="funciones.asp" -->
<%
cerrarSesion()
response.cookies("id_usuario").expires = date() - 1
response.cookies("sesion").expires = date() - 1
response.redirect("../index.asp")
%>