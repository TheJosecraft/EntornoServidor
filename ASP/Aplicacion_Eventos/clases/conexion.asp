<%
Class Conexion

	public SUB Conexion()
		set conexion = server.createObject("ADODB.Connection")
		conexion.open("bd")
	end SUB

	public SUB cerrarConexion()
		conexion.close()
	end SUB

	public function consultar(consulta)
		set consultar = conexion.Execute(consulta)
	end function

end Class
%>