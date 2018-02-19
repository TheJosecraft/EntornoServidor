<%
Class Conexion

	private con

	public SUB Conexion()
		set con = server.createObject("ADODB.Connection")
		con.open("bd")
	end SUB

	public SUB cerrarConexion()
		con.close()
	end SUB

	public function consultar(consulta)
		set consultar = con.Execute(consulta)
	end function

end Class
%>