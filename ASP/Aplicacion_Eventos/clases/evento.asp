<!-- #include file ="conexion.asp" -->
<%
Class Evento

	private m_codigo
	private m_actividad
	private m_cliente
	private m_fecha_contrato
	private m_fecha_evento

	public function getCodigo()
		getCodigo = m_codigo
	end function

	public SUB setCodigo(codigo)
		m_codigo = codigo
	end SUB

	public function getActividad()
		getActividad = m_actividad
	end function

	public SUB setActividad(actividad)
		m_actividad = actividad
	end SUB

	public function getCliente()
		getCliente = m_cliente
	end function

	public SUB setCliente(cliente)
		m_cliente = cliente
	end SUB

	public function getFechaContrato()
		getFechaContrato = m_fecha_contrato
	end function

	public SUB setFechaContrato(fecha_contrato)
		m_fecha_contrato = fecha_contrato
	end SUB

	public function getFechaEvento()
		getFechaEvento = m_fecha_evento
	end function

	public SUB setFechaEvento(fecha_evento)
		m_fecha_evento = fecha_evento
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

public SUB insertarEvento()

	set ObjConexion = new Conexion
	ObjConexion.Conectar()
	ObjConexion.consultar("INSERT INTO EVENTOS (actividad, cliente, fecha_contrato, fecha_evento) VALUES (" & m_actividad & ", " & m_cliente & ", " & m_fecha_contrato & ", '27/03/2018')")

	ObjConexion.cerrarConexion()

end SUB

public SUB modificar(id)
	set ObjConexion = new Conexion
	ObjConexion.Conectar()
	ObjConexion.consultar("UPDATE EVENTOS SET actividad = " & m_actividad & ", cliente = " & m_cliente & ", fecha_contrato = '" & m_fecha_contrato & "', fecha_evento = '" & m_fecha_evento & "' where codigo = " & id)
	ObjConexion.cerrarConexion()
end SUB

end Class
%>