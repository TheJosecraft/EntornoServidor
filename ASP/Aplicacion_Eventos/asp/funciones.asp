<% SUB menu (pag)%>
		<div id="sidebar-wrapper" class="bg-dark">
	 		<ul class="sidebar-nav navbar-nav">
	 	<% if pag = "aplicacion" then%>
				<li class="nav-item"><a class="nav-link" href="clientes/clientes.asp">Clientes</a></li>
				<li class="nav-item"><a class="nav-link" href="actividades/actividades.asp">Actividades</a></li>
				<li class="nav-item"><a class="nav-link" href="eventos/eventos.asp">Eventos</a></li>
		<% else %>
				<li class="nav-item"><a class="nav-link" href="../clientes/clientes.asp">Clientes</a></li>
				<li class="nav-item"><a class="nav-link" href="../actividades/actividades.asp">Actividades</a></li>
				<li class="nav-item"><a class="nav-link" href="../eventos/eventos.asp">Eventos</a></li>
		<% end if %>
	<% if Session("id_usuario") = 1 then %>
		<% if pag = "actividades" then %>
				<li class="nav-item"><a class="nav-link" href="insertarActividad.asp">Introducir actividad</a></li>
				<li class="nav-item"><a class="nav-link" href="">Borrar actividad</a></li>
				<li class="nav-item"><a class="nav-link" href="">Buscar actividad</a></li>
				<li class="nav-item"><a class="nav-link" href="actividades.asp?lista=true">Ver todas las actividades</a></li>
				<li class="nav-item"><a class="nav-link" href="../aplicacion.asp">Volver</a></li>
		<% end if %>
		<% if pag = "clientes" then %>
				<li class="nav-item"><a class="nav-link" href="insertarCliente.asp">Introducir nuevo cliente</a></li>
				<li class="nav-item"><a class="nav-link" href="clientes.asp?lista=true">Lista de clientes</a></li>
				<li class="nav-item"><a class="nav-link" href="../aplicacion.asp">Volver</a>
		<% end if %>
		<% if pag = "eventos" then %>
				<li class="nav-item"><a class="nav-link" href="insertarEvento.asp">Introducir nuevo evento</a></li>
				<li class="nav-item"><a class="nav-link" href="">Borrar evento cancelado</a></li>
				<li class="nav-item"><a class="nav-link" href="">Buscar un evento</a></li>
				<li class="nav-item"><a class="nav-link" href="calendarioEventos.asp">Calendario de eventos</a></li>
				<li class="nav-item"><a class="nav-link" href="../aplicacion.asp">Volver</a></li>
		<% end if %>
	<% else %>
		<% if pag = "actividades" then %>
				<li class="nav-item"><a class="nav-link" href="">Buscar actividad</a></li>
				<li class="nav-item"><a class="nav-link" href="actividades.asp?lista=true">Ver todas las actividades</a></li>
				<li class="nav-item"><a class="nav-link" href="../aplicacion.asp">Volver</a></li>
		<% end if %>
		<% if pag = "clientes" then %>
				<li class="nav-item"><a class="nav-link" href="">Ver factura</a></li>
				<li class="nav-item"><a class="nav-link" href="../aplicacion.asp">Volver</a></li>
		<% end if %>
		<% if pag = "eventos" then %>
				<li class="nav-item"><a href="">Buscar un evento</a></li>
				<li class="nav-item"><a href="calendarioEventos.asp">Calendario de eventos</a></li>
				<li class="nav-item"><a href="../aplicacion.asp">Volver</a></li>
		<% end if %>
	<% end if %>
</ul>	
</li>
</ul>
</div>
<% END SUB 
SUB get_header() %>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="../../css/bootstrap.min.css">
	<link rel="stylesheet" href="../../css/fontawesome-all.min.css">
	<link rel="stylesheet" href="../../css/main.css">
<% END SUB

SUB get_footer() %>
	<script type="text/javascript" href="../../js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" href="../../js/popper.min.js"></script>
	<script type="text/javascript" href="../../js/bootstrap.min.js"></script>
<% END SUB
%>

