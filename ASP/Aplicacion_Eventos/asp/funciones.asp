<% SUB menu (pag)%>
	<nav class="nav flex-column">
		<%if pag = "aplicacion" then %>
			<a class="nav-link" href="clientes/clientes.asp">Clientes</a>
			<a class="nav-link" href="actividades/actividades.asp">Actividades</a>
			<a class="nav-link" href="eventos/eventos.asp">Eventos</a>
	<% end if
	if Session("id_usuario") = 1 then %>
		<% if pag = "actividades" then %>
			<a class="nav-link" href="insertarActividad.asp">Introducir actividad</a>
			<a class="nav-link" href="">Borrar actividad</a>
			<a class="nav-link" href="">Buscar actividad</a>
			<a class="nav-link" href="actividades.asp?lista=true">Ver todas las actividades</a>
			<a class="nav-link" href="../aplicacion.asp">Volver</a>
		<% end if %>
		<% if pag = "clientes" then %>
			<a class="nav-link" href="insertarCliente.asp">Introducir nuevo cliente</a>
			<a class="nav-link" href="clientes.asp?lista=true">Lista de clientes</a>
			<a class="nav-link" href="../aplicacion.asp">Volver</a>
		<% end if %>
		<% if pag = "eventos" then %>
			<a class="nav-link" href="insertarEvento.asp">Introducir nuevo evento</a>
			<a class="nav-link" href="">Borrar evento cancelado</a>
			<a class="nav-link" href="">Buscar un evento</a>
			<a class="nav-link" href="">Calendario de eventos</a>
			<a class="nav-link" href="../aplicacion.asp">Volver</a>
		<% end if %>
	<% else %>
		<% if pag = "actividades" then %>
			<a class="nav-link" href="">Buscar actividad</a>
			<a class="nav-link" href="actividades.asp?lista=true">Ver todas las actividades</a>
			<a class="nav-link" href="../aplicacion.asp">Volver</a>
		<% end if %>
		<% if pag = "clientes" then %>
			<a class="nav-link" href="">Ver factura</a>
			<a class="nav-link" href="../aplicacion.asp">Volver</a>
		<% end if %>
		<% if pag = "eventos" then %>
			<a href="">Buscar un evento</a>
			<a href="">Calendario de eventos</a>
			<a href="../aplicacion.asp">Volver</a>
		<% end if %>
	<% end if %>
	</nav>
	
<% END SUB 
SUB get_header() %>
	<link rel="stylesheet" href="../../css/bootstrap.min.css">
	<link rel="stylesheet" href="../../css/main.css">
<% END SUB
%>

