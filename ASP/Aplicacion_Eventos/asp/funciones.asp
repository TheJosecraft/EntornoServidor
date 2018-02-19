<% SUB menu (pag)
	if pag = "aplicacion" then %>
			<a href="clientes/clientes.asp">Clientes</a>
			<a href="actividades/actividades.asp">Actividades</a>
			<a href="eventos/eventos.asp">Eventos</a>
	<% end if
	if Session("id_usuario") = 1 then %>
		<% if pag = "actividades" then %>
			<a href="">Introducir actividad</a>
			<a href="">Borrar actividad</a>
			<a href="">Buscar actividad</a>
			<a href="">Ver todas las actividades</a>
		<% end if %>
		<% if pag = "clientes" then %>
			<a href="">Introducir nuevo cliente</a>
			<a href="clientes.asp?lista=true">Lista de clientes</a>
		<% end if %>
		<% if pag = "eventos" then %>
			<a href="">Introducir nuevo evento</a>
			<a href="">Borrar evento cancelado</a>
			<a href="">Buscar un evento</a>
			<a href="">Calendario de eventos</a>
		<% end if %>
	<% else %>
		<% if pag = "actividades" then %>
			<a href="">Buscar actividad</a>
			<a href="">Ver todas las actividades</a>
		<% end if %>
		<% if pag = "clientes" then %>
			<a href="">Ver factura</a>
		<% end if %>
		<% if pag = "eventos" then %>
			<a href="">Buscar un evento</a>
			<a href="">Calendario de eventos</a>
		<% end if %>
	<% end if 
END SUB %>

