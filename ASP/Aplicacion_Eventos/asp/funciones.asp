<% SUB menu (pag)%>
		<div id="sidebar-wrapper" class="bg-dark">
	 		<ul class="sidebar-nav navbar-nav">
	 	
			<% if Session("id_usuario") = 1 then%>
				<li class="nav-item"><a class="nav-link" href="../clientes/clientes.asp?lista=true"><i class="fas fa-users"></i> Clientes</a></li>
				<li class="nav-item"><a class="nav-link" href="../actividades/actividades.asp?lista=true"><i class="fas fa-list-ul"></i> Actividades</a></li>
				<li class="nav-item"><a class="nav-link" href="../eventos/eventos.asp?lista=true"><i class="far fa-calendar"></i> Eventos</a></li>
			<% else %>
				<li class="nav-item"><a class="nav-link" href="../clientes/clientes.asp?factura=true"><i class="fas fa-money-bill-alt"></i> Ver factura</a></li>
				<li class="nav-item"><a class="nav-link" href="../actividades/actividades.asp?lista=true"><i class="fas fa-list-ul"></i> Actividades</a></li>
				<li class="nav-item"><a class="nav-link" href="../eventos/eventos.asp?lista=true"><i class="far fa-calendar"></i> Eventos</a></li>
			<% end if %>
	<% if Session("id_usuario") = 1 then %>
		<% if pag = "actividades" then %>
				<li class="nav-item"><a class="nav-link" href="insertarActividad.asp"><i class="fas fa-plus-square"></i> Introducir actividad</a></li>
		<% end if %>
		<% if pag = "clientes" then %>
				<li class="nav-item"><a class="nav-link" href="insertarCliente.asp"><i class="fas fa-plus-square"></i> Introducir nuevo cliente</a></li>
		<% end if %>
		<% if pag = "eventos" then %>
				<li class="nav-item"><a class="nav-link" href="insertarEvento.asp"><i class="fas fa-plus-square"></i> Introducir nuevo evento</a></li>
				<li class="nav-item"><a class="nav-link" href="calendarioEventos.asp"><i class="far fa-calendar-alt"></i> Calendario de eventos</a></li>
		<% end if %>
		<% if pag = "aplicacion" then%>
				<li class="nav-item"><a class="nav-link" href="../index.asp"><i class="fas fa-sign-out-alt"></i> Cerrar sesión</a></li>
		<% else %>
				<li class="nav-item"><a class="nav-link" href="../cerrarSesion.asp"><i class="fas fa-sign-out-alt"></i> Cerrar sesión</a></li>
		<% end if %>
	<% else %>
		<% if pag = "eventos" then %>
				<li class="nav-item"><a class="nav-link" href="calendarioEventos.asp"><i class="far fa-calendar-alt"></i> Calendario de eventos</a></li>
		<% end if %>
		
		<li class="nav-item"><a class="nav-link" href="../cerrarSesion.asp"><i class="fas fa-sign-out-alt"></i> Cerrar sesión</a></li>
		
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

SUB sesiones(permiso)
	if len(request.cookies("sesion")) > 0 then
		Session("id_usuario") = request.cookies("id_usuario")
	end if

	if Session("id_usuario") = "" then
		response.redirect("../../index.asp")
	end if

	if Session("id_usuario") <> 1 AND permiso = 0 then
		response.redirect("../../index.asp")
	end if

END SUB

SUB cerrarSesion()
	Session.abandon
END SUB

function in_array(elemento, arr)
  Dim i
  in_array = False
  For i=0 To uBound(arr)
  	 	If arr(i) = elemento Then
        in_array = True
        Exit Function      
    End If    
  Next
End Function
%>

