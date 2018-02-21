<%
Class Actividad

	private a_codigo
	private a_nombre
	private a_desc
	private a_duracion
	private a_precio

	public function getCodigo()
		getCodigo = a_codigo
	end function

	public SUB setCodigo(codigo)
		a_codigo = codigo
	end SUB

	public function getNombre()
		getNombre = a_nombre
	end function

	public SUB setNombre(nombre)
		a_nombre = nombre
	end SUB

	public function getDesc()
		getDesc = a_desc
	end function

	public SUB setDesc(descripcion)
		a_desc = descripcion
	end SUB

	public function getDuracion()
		getDuracion = a_duracion
	end function

	public SUB setDuracion(duracion)
		a_duracion = duracion
	end SUB

	public function getPrecio()
		getPrecio = a_precio
	end function

	public SUB setPrecio(precio)
		a_precio = precio
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

public function getNombreById(id)
	set ObjConexion = new Conexion
	ObjConexion.Conectar()
	set datos = ObjConexion.consultar("SELECT * FROM ACTIVIDAD WHERE codigo = " & id)

	do while not datos.eof
		getNombreById = datos("nombre")
		datos.moveNext
	loop

	ObjConexion.cerrarConexion()
end function

public SUB getAll()
	set ObjConexion = new Conexion
	ObjConexion.Conectar()
	set datos = ObjConexion.consultar("SELECT * FROM ACTIVIDAD")

	response.write("<table class='table'>")
	response.write("<thead class='thead-dark'>")
	response.write("<tr>")
	response.write("<th>Código</th>")
	response.write("<th>Nombre</th>")
	response.write("<th>Descripción</th>")
	response.write("<th>Duración</th>")
	response.write("<th>Precio</th>")
	response.write("<th>Acciones</th>")
	response.write("</tr>")
	response.write("</thead>")
	response.write("<tbody>")
	do while not datos.eof
		response.write("<tr>")
		response.write("<td>" & datos("codigo") & "</td>")
		response.write("<td>" & datos("nombre") & "</td>")
		response.write("<td>" & datos("descripcion") & "</td>")
		response.write("<td>" & datos("duracion") & "</td>")
		response.write("<td>" & datos("precio") & "</td>")
		response.write("<td><a class='btn btn-danger text-white' href='borrarActividad.asp?id=" & datos("codigo") & "'><i class='far fa-trash-alt'></i> Borrar</a></td>")
		response.write("</tr>")
		datos.moveNext
	loop

	response.write("</tbody>")
	response.write("</table>")
	ObjConexion.cerrarConexion()
end SUB

public SUB insertarActividad()

	set ObjConexion = new Conexion
	ObjConexion.Conectar()
	ObjConexion.consultar("INSERT INTO ACTIVIDAD (nombre, descripcion, duracion, precio) VALUES ('" & a_nombre & "', '" & a_desc & "'," & a_duracion & ", " & a_precio & ")")

	ObjConexion.cerrarConexion()

end SUB

public SUB modificar(id)
	set ObjConexion = new Conexion
	ObjConexion.Conectar()
	ObjConexion.consultar("UPDATE ACTIVIDAD SET nombre = '" & a_nombre & "', duracion = '" & a_desc & "', direccion = " & a_duracion & ", contra = " & a_precio & " where codigo = " & id)
	ObjConexion.cerrarConexion()
end SUB

public SUB borrarActividad(id)
	set ObjConexion = new Conexion
	ObjConexion.Conectar()
	ObjConexion.consultar("UPDATE EVENTOS SET actividad = 0 where actividad = " & id)
	'ObjConexion.consultar("DELETE FROM ACTIVIDAD where codigo = " & id)
	ObjConexion.cerrarConexion()
end SUB

End class
%>