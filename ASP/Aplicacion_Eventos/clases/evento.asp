<%
Class Evento

	private e_codigo
	private e_actividad
	private e_cliente
	private e_fecha_contrato
	private e_fecha_evento

	Private Sub  Class_Initialize() 
	   e_fecha_contrato = date()
	End Sub 

	public function getCodigo()
		getCodigo = e_codigo
	end function

	public SUB setCodigo(codigo)
		e_codigo = codigo
	end SUB

	public function getActividad()
		getActividad = e_actividad
	end function

	public SUB setActividad(actividad)
		e_actividad = actividad
	end SUB

	public function getCliente()
		getCliente = e_cliente
	end function

	public SUB setCliente(cliente)
		e_cliente = cliente
	end SUB

	public function getFechaContrato()
		getFechaContrato = e_fecha_contrato
	end function

	public SUB setFechaContrato(fecha_contrato)
		e_fecha_contrato = fecha_contrato
	end SUB

	public function getFechaEvento()
		getFechaEvento = e_fecha_evento
	end function

	public SUB setFechaEvento(fecha_evento)
		e_fecha_evento = fecha_evento
	end SUB

	public SUB getById(id)
	set ObjConexion = new Conexion
	ObjConexion.Conexion()
	set datos = ObjConexion.consultar("SELECT * FROM ACTIVIDAD WHERE codigo = " & id)

	do while not datos.eof
		response.write(datos("codigo") & "<br>")
		response.write(datos("nombre") & "<br>")
		response.write(datos("descripcion") & "<br>")
		response.write(datos("duracion") & "<br>")
		response.write(datos("precio") & "<br>")
		response.write("<br>")

		datos.moveNext
	loop

	ObjConexion.cerrarConexion()
end SUB

public SUB getByFechaEvento(fecha)
	set ObjConexion = new Conexion
	ObjConexion.Conectar()

	fecha = dia & "/" & mes & "/" & anio
	fecha = cdate(fecha)


	if Session("id_usuario") = 1 then
		set datos = ObjConexion.consultar("SELECT * FROM EVENTOS where fecha_evento like '" & fecha & "'")
	else
		set datos = ObjConexion.consultar("SELECT * FROM EVENTOS where fecha_evento like '" & fecha & "' and cliente = " & Session("id_usuario"))
	end if

	response.write("<table class='table'>")
	response.write("<thead class='thead-dark'>")
	response.write("<tr>")
	response.write("<th>Actividad</th>")
	response.write("<th>Cliente</th>")
	response.write("<th>Fecha Contrato</th>")
	response.write("<th>Fecha Evento</th>")
	if Session("id_usuario") = 1 then
		response.write("<th>Acciones</th>")
	end if
	response.write("</tr>")
	response.write("</thead>")
	response.write("<tbody>")
	do while not datos.eof
		set cli = new Cliente
		set act = new Actividad
		response.write("<tr>")
		response.write("<td>" & act.getNombreById(datos("actividad")) & "</td>")
		response.write("<td>" & cli.getNombreById(datos("cliente")) & "</td>")
		response.write("<td>" & datos("fecha_contrato") & "</td>")
		response.write("<td>" & datos("fecha_evento") & "</td>")
		if Session("id_usuario") = 1 then
			response.write("<td><a class='btn btn-danger text-white' href='borrarEvento.asp?id=" & datos("codigo") & "'><i class='far fa-trash-alt'></i> Borrar</a></td>")
		end if
		response.write("</tr>")
		datos.moveNext
	loop

	response.write("</tbody>")
	response.write("</table>")
	ObjConexion.cerrarConexion()
end SUB

public SUB getAll()
	set ObjConexion = new Conexion
	ObjConexion.Conectar()
	set datos = ObjConexion.consultar("SELECT * FROM EVENTOS")

	response.write("<table class='table'>")
	response.write("<thead class='thead-dark'>")
	response.write("<tr>")
	response.write("<th>Actividad</th>")
	response.write("<th>Cliente</th>")
	response.write("<th>Fecha Contrato</th>")
	response.write("<th>Fecha Evento</th>")
	if Session("id_usuario") = 1 then
		response.write("<th>Acciones</th>")
	end if
	response.write("</tr>")
	response.write("</thead>")
	response.write("<tbody>")
	do while not datos.eof
		set cli = new Cliente
		set act = new Actividad
		response.write("<tr>")
		response.write("<td>" & act.getNombreById(datos("actividad")) & "</td>")
		response.write("<td>" & cli.getNombreById(datos("cliente")) & "</td>")
		response.write("<td>" & datos("fecha_contrato") & "</td>")
		response.write("<td>" & datos("fecha_evento") & "</td>")
		if Session("id_usuario") = 1 then
			response.write("<td><a class='btn btn-danger text-white' href='borrarEvento.asp?id=" & datos("codigo") & "'><i class='far fa-trash-alt'></i> Borrar</a></td>")
		end if
		
		response.write("</tr>")
		datos.moveNext
	loop

	response.write("</tbody>")
	response.write("</table>")
	ObjConexion.cerrarConexion()
end SUB

public SUB buscarEvento(busqueda)

	set ObjConexion = new Conexion
	ObjConexion.conectar()

	set datos = ObjConexion.consultar("SELECT e.* FROM EVENTOS e, CLIENTE c, ACTIVIDAD a where e.cliente = c.codigo and e.actividad = a.codigo and (a.nombre like '%" & busqueda & "%' or c.nombre like '%" & busqueda & "%' or e.fecha_contrato like'%" & busqueda & "%' or e.fecha_evento like '%" & busqueda & "%')")

	if not datos.eof then
		response.write("<table class='table'>")
		response.write("<thead class='thead-dark'>")
		response.write("<tr>")
		response.write("<th>Actividad</th>")
		response.write("<th>Cliente</th>")
		response.write("<th>Fecha Contrato</th>")
		response.write("<th>Fecha Evento</th>")
		if Session("id_usuario") = 1 then
			response.write("<th>Acciones</th>")
		end if
		response.write("</tr>")
		response.write("</thead>")
		response.write("<tbody>")
		do while not datos.eof
			set cli = new Cliente
			set act = new Actividad

			response.write("<tr>")
			response.write("<td>" & act.getNombreById(datos("actividad")) & "</td>")
			response.write("<td>" & cli.getNombreById(datos("cliente")) & "</td>")
			response.write("<td>" & datos("fecha_contrato") & "</td>")
			response.write("<td>" & datos("fecha_evento") & "</td>")
			if Session("id_usuario") = 1 then
				response.write("<td><a class='btn btn-danger text-white' href='borrarEvento.asp?id=" & datos("codigo") & "'><i class='far fa-trash-alt'></i> Borrar</a></td>")
			end if
			
			response.write("</tr>")
			datos.moveNext
		loop

		response.write("</tbody>")
		response.write("</table>")
	else
		response.write("No se han encontrado resultados")
	end if
	
	ObjConexion.cerrarConexion()

end SUB

public SUB insertarEvento()

	set ObjConexion = new Conexion
	ObjConexion.Conectar()
	ObjConexion.consultar("INSERT INTO EVENTOS (actividad, cliente, fecha_contrato, fecha_evento) VALUES (" & e_actividad & ", " & e_cliente & ", '" & e_fecha_contrato & "', '" & e_fecha_evento & "')")

	ObjConexion.cerrarConexion()

end SUB

public SUB modificar(id)
	set ObjConexion = new Conexion
	ObjConexion.Conectar()
	ObjConexion.consultar("UPDATE EVENTOS SET actividad = " & e_actividad & ", cliente = " & e_cliente & ", fecha_contrato = '" & e_fecha_contrato & "', fecha_evento = '" & e_fecha_evento & "' where codigo = " & id)
	ObjConexion.cerrarConexion()
end SUB

public SUB borrarEvento(id)
	set ObjConexion = new Conexion
	ObjConexion.Conectar()
	ObjConexion.consultar("DELETE FROM EVENTOS where codigo = " & id)
	ObjConexion.cerrarConexion()
end SUB

end Class
%>