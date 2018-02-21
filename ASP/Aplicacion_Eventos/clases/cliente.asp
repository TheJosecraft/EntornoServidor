<%
Class cliente

private m_codigo
private m_nombre
private m_telefono
private m_direccion
private m_contra

public SUB Cliente()

END SUB

public function getCodigo()
	getCodigo = m_codigo
end function

public SUB setCodigo(codigo)
	m_codigo = codigo
end SUB

public function getNombre()
	getNombre = m_nombre
end function

public SUB setNombre(nombre)
	m_nombre = nombre
end SUB

public function getTelefono()
	getTelefono = m_telefono
end function

public SUB setTelefono(telefono)
	m_telefono = telefono
end SUB

public function getDireccion()
	getDireccion = m_direccion
end function

public SUB setDireccion(direccion)
	m_direccion = direccion
end SUB

public function getContra()
	getContra = m_contra
end function

public SUB setContra(contra)
	m_contra = contra
end SUB

public SUB getById(id)
	set ObjConexion = new Conexion
	ObjConexion.Conectar()
	set datos = ObjConexion.consultar("SELECT * FROM CLIENTE WHERE codigo = " & id)

	do while not datos.eof
		response.write(datos("codigo") & "<br>")
		response.write(datos("nombre") & "<br>")
		response.write(datos("telefono") & "<br>")
		response.write(datos("direccion") & "<br>")
		response.write(datos("contra") & "<br>")
		response.write("<br>")

		datos.moveNext
	loop

	ObjConexion.cerrarConexion()
end SUB

public function getNombreById(id)
	set ObjConexion = new Conexion
	ObjConexion.Conectar()
	set datos = ObjConexion.consultar("SELECT * FROM CLIENTE WHERE codigo = " & id)

	do while not datos.eof
		getNombreById = datos("nombre")
		datos.moveNext
	loop

	ObjConexion.cerrarConexion()
end function

public SUB getAll()
	set ObjConexion = new Conexion
	ObjConexion.Conectar()
	set datos = ObjConexion.consultar("SELECT * FROM CLIENTE")

	response.write("<table class='table'>")
	response.write("<thead class='thead-dark'>")
	response.write("<tr>")
	response.write("<th>Código</th>")
	response.write("<th>Nombre</th>")
	response.write("<th>Teléfono</th>")
	response.write("<th>Dirección</th>")
	response.write("<th>Contraseña</th>")
	response.write("</tr>")
	response.write("</thead>")
	response.write("<tbody>")
	do while not datos.eof
		response.write("<tr>")
		response.write("<td>" & datos("codigo") & "</td>")
		response.write("<td>" & datos("nombre") & "</td>")
		response.write("<td>" & datos("telefono") & "</td>")
		response.write("<td>" & datos("direccion") & "</td>")
		response.write("<td>" & datos("contra") & "</td>")
		response.write("</tr>")
		datos.moveNext
	loop
	response.write("</tbody>")
	response.write("</table>")
	ObjConexion.cerrarConexion()
end SUB

public SUB getFactura(id)
	set ObjConexion = new Conexion
	ObjConexion.Conectar()
	set datos = ObjConexion.consultar("SELECT act.codigo, act.precio, eve.fecha_contrato, eve.fecha_evento FROM CLIENTE cli, ACTIVIDAD act, EVENTOS eve where cli.codigo = eve.cliente and act.codigo = eve.actividad and eve.cliente = " & id)
	set act = new Actividad
	precioTotal = 0
	response.write("<table class='table'>")
	response.write("<thead class='thead-dark'>")
	response.write("<tr>")
	response.write("<th>Actividad</th>")
	response.write("<th>Fecha Contrato</th>")
	response.write("<th>Fecha Evento</th>")
	response.write("<th>Precio</th>")
	response.write("</tr>")
	response.write("</thead>")
	response.write("<tbody>")
	do while not datos.eof
		response.write("<tr>")
		response.write("<td>" & act.getNombreById(datos("codigo")) & "</td>")
		response.write("<td>" & datos("fecha_contrato") & "</td>")
		response.write("<td>" & datos("fecha_evento") & "</td>")
		response.write("<td>" & datos("precio") & "</td>")
		response.write("</tr>")
		precioTotal = precioTotal + cint(datos("precio"))
		datos.moveNext
	loop
	response.write("<tr>")
	response.write("<th scope='row' colspan='3'>Total</th>")
	response.write("<td>" & precioTotal & "</th>")
	response.write("</tr>")
	response.write("</tbody>")
	response.write("</table>")
	ObjConexion.cerrarConexion()
end SUB

public SUB insertarCliente()

	set ObjConexion = new Conexion
	ObjConexion.Conectar()
	ObjConexion.consultar("INSERT INTO CLIENTE (nombre, telefono, direccion, contra) VALUES ('" & m_nombre & "', '" & m_telefono & "', '" & m_direccion & "', '" & m_contra & "')")

	ObjConexion.cerrarConexion()

end SUB

public SUB modificar(id)
	set ObjConexion = new Conexion
	ObjConexion.Conectar()
	ObjConexion.consultar("UPDATE CLIENTE SET nombre = '" & m_nombre & "', telefono = '" & m_telefono & "', direccion = '" & m_direccion & "', contra = '" & m_contra & "' where codigo = " & id)
	ObjConexion.cerrarConexion()
end SUB

End Class
%>