<!-- #include file ="conexion.asp" -->
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
	ObjConexion.Conexion()
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