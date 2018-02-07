<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Ejercicio 10</title>
	<style>
	caption{
		text-transform: capitalize;
		font-weight: bold;
	}

	table{
		float: left;
		margin-left: 15px;
		margin-right: auto;
	}
	</style>
</head>
<body>
	<%
		
        For i = 1 To 12 
            %>
			<table border="1">
				<caption><% Response.Write (monthName(i))  %></caption>
				<tr>
					<th><% Response.Write (Weekdayname(1, 1, 2))  %></th>
					<th><% Response.Write (Weekdayname(2, 1, 2))  %></th>
					<th><% Response.Write (Weekdayname(3, 1, 2))  %></th>
					<th><% Response.Write (Weekdayname(4, 1, 2))  %></th>
					<th><% Response.Write (Weekdayname(5, 1, 2))  %></th>
					<th><% Response.Write (Weekdayname(6, 1, 2))  %></th>
					<th><% Response.Write (Weekdayname(7, 1, 2))  %></th>
				</tr>
				<%

				Cadfecha = "01/" & i & "/2018"

				if(i = 12) then
					diasMes = "01/01/2019"
				else
					diasMes = "01/" & i +1 & "/2018"
				end if
				
                
                fecha = Cdate(Cadfecha)
                inicioSemana = Weekday(fecha, VBMONDAY)
                ultimoDia = dateadd("d", -1, diasMes)
                numDias = day(ultimoDia)
                contCeldas = 1

                while (inicioSemana > 1)
					Response.write("<td>&nbsp;</td>")
                	contCeldas = contCeldas + 1
                	inicioSemana = inicioSemana - 1
                	'Response.write("Contador: " & contCeldas & "<br>")
                wend

                For j = 1 To numDias
                   
                   'Response.write("Inicio semana: " & inicioSemana)
                   Response.Write("<td>" & j & "</td>")
                    
                    If contCeldas MOD 7 = 0 AND contCeldas <> 0 Then
                        %>
                            </tr><tr>
                        <%
                        contCeldas = 0
                    End if
                    'Response.write("Contador: " & contCeldas & "<br>")

                    contCeldas = contCeldas + 1
                Next

                
				%>
			</table>
            <%
        Next
	%>
</body>
</html>