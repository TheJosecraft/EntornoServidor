<% SUB menu (pag)%>
		<div id="sidebar-wrapper" class="bg-dark">
	 		<ul class="sidebar-nav navbar-nav">
	 	<% if pag = "aplicacion" then%>
				<li class="nav-item"><a class="nav-link" href="clientes/clientes.asp"><i class="fas fa-users"></i> Clientes</a></li>
				<li class="nav-item"><a class="nav-link" href="actividades/actividades.asp"><i class="fas fa-list-ul"></i> Actividades</a></li>
				<li class="nav-item"><a class="nav-link" href="eventos/eventos.asp"><i class="far fa-calendar"></i> Eventos</a></li>
		<% else %>
				<li class="nav-item"><a class="nav-link" href="../clientes/clientes.asp"><i class="fas fa-users"></i> Clientes</a></li>
				<li class="nav-item"><a class="nav-link" href="../actividades/actividades.asp"><i class="fas fa-list-ul"></i> Actividades</a></li>
				<li class="nav-item"><a class="nav-link" href="../eventos/eventos.asp"><i class="far fa-calendar"></i> Eventos</a></li>
		<% end if %>
	<% if Session("id_usuario") = 1 then %>
		<% if pag = "actividades" then %>
				<li class="nav-item"><a class="nav-link" href="insertarActividad.asp"><i class="fas fa-plus-square"></i> Introducir actividad</a></li>
				<li class="nav-item"><a class="nav-link" href=""><i class="fas fa-search"></i> Buscar actividad</a></li>
				<li class="nav-item"><a class="nav-link" href="actividades.asp?lista=true"><i class="fas fa-list-ol"></i> Ver todas las actividades</a></li>
				<li class="nav-item"><a class="nav-link" href="../aplicacion.asp"><i class="fas fa-arrow-circle-left"></i> Volver</a></li>
		<% end if %>
		<% if pag = "clientes" then %>
				<li class="nav-item"><a class="nav-link" href="insertarCliente.asp"><i class="fas fa-plus-square"></i> Introducir nuevo cliente</a></li>
				<li class="nav-item"><a class="nav-link" href="clientes.asp?lista=true"><i class="fas fa-list-ul"></i> Lista de clientes</a></li>
				<li class="nav-item"><a class="nav-link" href="../aplicacion.asp"><i class="fas fa-arrow-circle-left"></i> Volver</a>
		<% end if %>
		<% if pag = "eventos" then %>
				<li class="nav-item"><a class="nav-link" href="insertarEvento.asp"><i class="fas fa-plus-square"></i> Introducir nuevo evento</a></li>
				<li class="nav-item"><a class="nav-link" href="?lista=true"><i class="far fa-trash-alt"></i> Borrar evento</a></li>
				<li class="nav-item"><a class="nav-link" href=""><i class="fas fa-search"></i> Buscar un evento</a></li>
				<li class="nav-item"><a class="nav-link" href="calendarioEventos.asp"><i class="far fa-calendar-alt"></i> Calendario de eventos</a></li>
				<li class="nav-item"><a class="nav-link" href="../aplicacion.asp"><i class="fas fa-arrow-circle-left"></i> Volver</a></li>
		<% end if %>
	<% else %>
		<% if pag = "actividades" then %>
				<li class="nav-item"><a class="nav-link" href=""><i class="fas fa-search"></i> Buscar actividad</a></li>
				<li class="nav-item"><a class="nav-link" href="actividades.asp?lista=true"><i class="fas fa-list-ul"></i> Ver todas las actividades</a></li>
				<li class="nav-item"><a class="nav-link" href="../aplicacion.asp"><i class="fas fa-arrow-circle-left"></i> Volver</a></li>
		<% end if %>
		<% if pag = "clientes" then %>
				<li class="nav-item"><a class="nav-link" href="">Ver factura</a></li>
				<li class="nav-item"><a class="nav-link" href="../aplicacion.asp"><i class="fas fa-arrow-circle-left"></i> Volver</a></li>
		<% end if %>
		<% if pag = "eventos" then %>
				<li class="nav-item"><a class="nav-link" href="">Buscar un evento</a></li>
				<li class="nav-item"><a class="nav-link" href="calendarioEventos.asp">Calendario de eventos</a></li>
				<li class="nav-item"><a class="nav-link" href="../aplicacion.asp">Volver</a></li>
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

