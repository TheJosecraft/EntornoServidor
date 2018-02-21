<%
Class Evento

	private e_codigo
	private e_actividad
	private e_cliente
	private e_fecha_contrato
	private e_fecha_evento

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
	response.write("<th>Acciones</th>")
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
		response.write("<td><a class='btn btn-danger text-white' href='borrarEvento.asp?id=" & datos("codigo") & "'><i class='far fa-trash-alt'></i> Borrar</a></td>")
		response.write("</tr>")
		datos.moveNext
	loop

	response.write("</tbody>")
	response.write("</table>")
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