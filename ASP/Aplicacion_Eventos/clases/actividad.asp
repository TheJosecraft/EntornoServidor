<!-- #include file ="conexion.asp" -->
<%
Class Actividad

	private m_nombre
	private m_desc
	private m_duracion
	private m_precio

	public function getNombre()
		getNombre = m_nombre
	end function

	public SUB setNombre(nombre)
		m_nombre = nombre
	end SUB

	public function getDesc()
		getDesc = m_desc
	end function

	public SUB setDesc(descripcion)
		m_desc = descripcion
	end SUB

	public function getDuracion()
		getDuracion = m_duracion
	end function

	public SUB setDuracion(duracion)
		m_duracion = duracion
	end SUB

	public function getPrecio()
		getPrecio = m_precio
	end function

	public SUB setPrecio(precio)
		m_precio = precio
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
	set datos = ObjConexion.consultar("SELECT * FROM ACTIVIDAD")

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

public SUB insertarActividad()

	set ObjConexion = new Conexion
	ObjConexion.Conectar()
	ObjConexion.consultar("INSERT INTO ACTIVIDAD (nombre, descripcion, duracion, precio) VALUES ('" & m_nombre & "', '" & m_desc & "'," & m_duracion & ", " & m_precio & ")")

	ObjConexion.cerrarConexion()

end SUB

public SUB modificar(id)
	set ObjConexion = new Conexion
	ObjConexion.Conectar()
	ObjConexion.consultar("UPDATE ACTIVIDAD SET nombre = '" & m_nombre & "', duracion = '" & m_desc & "', direccion = " & m_duracion & ", contra = " & m_precio & " where codigo = " & id)
	ObjConexion.cerrarConexion()
end SUB

End class
%>