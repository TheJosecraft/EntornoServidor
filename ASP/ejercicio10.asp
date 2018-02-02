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
                Cadfecha = "01/01/2018"
                fecha = Cdate(Cadfecha)
                ultimoDia = dateadd("d", -1, fecha)
                numDias = day(ultimoDia)
                For j = 1 To numDias
                    %>
                    <td><% Response.Write (j) %></td>
                    <%
                    If j MOD 7 = 0 Then
                        %>
                            </tr><tr>
                        <%
                    End if
                Next
				%>
			</table>
            <%
        Next
	%>
</body>
</html>