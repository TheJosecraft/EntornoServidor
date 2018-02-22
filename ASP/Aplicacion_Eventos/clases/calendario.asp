<%
Class Calendar 

Private cShowDate 
Private cValue 
Private cMonth 
Private cYear 
Private arrMonths(12) 
Private cShowNav 
Private cShowForm 
Private cEventos
Private cDia
Private cMes
Private cAnio

Private Sub  Class_Initialize() 
   cBorder = True
   for i = 1 to 12
	arrMonths(i) = monthname(i)
   next 
   cValue = Now 
   cMonth = Month(date()) 
   cYear = Year(date()) 
   cFonts = "Verdana" 
   cFontSize = 2 
   cShowNav = False 
   cShowForm = False 
   cShowDate = False
   dim cEventos
   cEventos = diasEventos()
End Sub 

Private Sub Class_Terminate() 

End Sub 

private function diasEventos()
set ObjConexion = new Conexion
ObjConexion.conectar()

redim cEventos(1)

if Session("id_usuario") = 1 then
  set datos = ObjConexion.consultar("SELECT DISTINCT fecha_evento FROM EVENTOS order by fecha_evento")
else
  set datos = ObjConexion.consultar("SELECT DISTINCT fecha_evento FROM EVENTOS where cliente = " & Session("id_usuario") & " order by fecha_evento")
end if

do while not datos.eof

	cEventos(uBound(cEventos)) = datos("fecha_evento")
	redim preserve cEventos(uBound(cEventos) + 1)
	datos.moveNext
loop
ObjConexion.cerrarConexion()
end function

Public Property Get Value() 
   Value = cValue 
End Property 

Public Property Let Value(byRef uValue) 
   cValue = uValue 
   cMonth = Month(uValue) 
   cYear = Year(uValue) 
End Property 


Public Property Let CalMonth(byRef uMonth) 
   cMonth = uMonth 
End Property 

Public Property Get CalMonth() 
   CalMonth = cMonth 
End Property 


Public Property Let CalYear(byRef uYear) 
   cYear = uYear 
End Property 

Public Property Get CalYear() 
   CalYear = cYear 
End Property 

Public Property Let ShowNav(byRef uShowNav) 
   cShowNav = uShowNav 
End Property 

Public Property Get ShowNav() 
   ShowNav = cShowNav 
End Property 


Public Property Let ShowForm(byRef uShowForm) 
   cShowForm = uShowForm 
End Property 

Public Property Get ShowForm() 
   ShowForm = cShowForm 
End Property 


Public Property Let ShowDate(byRef uShowDate) 
   cShowDate = uShowDate 
End Property 

Public sub getEventos()
	for i = 0 to uBound(cEventos)
		response.write(cEventos(i) & "<br>")
	next
end SUB

public SUB setDia(dia)
  cDia = dia
end SUB

public SUB setMes(mes)
  cMes = mes
end SUB

public SUB setAnio(anio)
  cAnio = anio
end SUB

Public Sub Display 
   If cShowNav or cShowForm Then 

	   Select Case request("CalAction") 

	   Case "back" 
		   cYear = request("currYear") 
		   If request("currMonth") < 1 Then 
			   cMonth = 12 
			   cYear = request("currYear") - 1 
		   Else 
			   cMonth = request("currMonth") 
		   End If 
	   Case "forward" 
	
		   cYear = request("currYear") 
		   If request("currMonth") > 12 Then 
			   cMonth = 1 
			   cYear = request("currYear") + 1 
		   Else 
			   cMonth = request("currMonth") 
		   End If 
	   Case "goto" 
		
		   cMonth = request("currMonth") 
		   If request("currYear") <> "" Then 
			   cYear = Int(request("currYear")) 
		   End IF 

	   End Select 
   End If 


' if cMonth - 1 = 0 then
' 	cMonth = 12
' 	cYear = cYear - 1
' elseif cMonth + 1 = 13 then
' 	cMonth = 1
' 	cYear = cYear + 1
' end if
	diasMes =  "01/" & cMonth & "/" & cYear
  
    if cMonth = 12 then
		diasMes = "01/01/" & cYear + 1
	else
		diasMes = "01/" & cMonth + 1 & "/" & cYear
	end if
	fecha = cdate(diasMes)
	inicioSemana = Weekday(diasMes, VBMONDAY) 

   Days = DaysInMonth()
  %> 
   <table border="0" cellspacing=1 cellpadding=1> 
	 <tr> 

   <%If cShowNav Then%> 
	  
		<td align="center"><a href="?CalAction=back&currMonth=<%=cMonth - 1%>&currYear=<%=cYear%>"><i class="fas fa-angle-left"></i></a></td> 
		<td colspan="5"align="center"><b><%=arrMonths(cMonth) & " " & cYear%></b></td> 
		<td align="center"><a href="?CalAction=forward&currMonth=<%=cMonth + 1%>&currYear=<%=cYear%>"><i class="fas fa-angle-right"></i></a></td> 

   <%Else%> 
	   <td colspan="7"align="center" ><b><%=arrMonths(cMonth) & " " & cYear%></b></td> 

   <%End If%> 

	 </tr> 
		 <th align="center" width=25 >L</th> 
		 <th align="center" width=25 >M</th> 
		 <th align="center" width=25 >X</th> 
		 <th align="center" width=25 >J</th> 
		 <th align="center" width=25 >V</th> 
		 <th align="center" width=25 >S</th>
		 <th align="center" width=25 >D</th>  
	
	 <tr> 
	   <%

				Cadfecha = "01/" & cMonth & "/" & cYear

				if i = 12 then
					diasMes = "01/01/" & cYear
				else
					diasMes = "01/" & cMonth +1 & "/" & cYear
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

                For j = 1 To Days
                	DIM fec
                	fec = j & "/" & cMonth & "/" & cYear
                	fec = cDate(fec)

                	if in_array(fec, cEventos) then
                		Response.Write("<td><a href='?eventos=true&dia=" & j & "&currMonth=" & cMonth & "&currYear=" & cYear & "'>" & j & "</a></td>")
                	else
                		Response.Write("<td>" & j & "</td>")
               		end if
                   
                   
                    If contCeldas MOD 7 = 0 AND contCeldas <> 0 Then %>
                            </tr><tr>
                    <% contCeldas = 0
                    End if
                    'Response.write("Contador: " & contCeldas & "<br>")

                    contCeldas = contCeldas + 1
                Next
				%>
			</table>
   <% If cShowForm Then BottomForm
End Sub 

Private Sub BottomForm()%> 
   <table border="0" cellspacing=1 cellpadding=1 width=200> 
   <form method="GET" action="<%= Request.ServerVariables("SCRIPT_NAME") %>"> 
   <tr> 
   <td align="right" width="25%"><font color="#000000" size=<%=cFontSize%> face="<%=cFonts%>"><b>Mes</b></font></td> 
   <td><select name="currMonth"> 
   <%For i = 1 to 12%> 
   <option value=<%=i%><%If i = Int(cMonth) Then response.write " Selected"%>><%=arrMonths(i)%></option> 
   <%Next%> 
   </select></td> 
   <td align="right" width="25%"><font color="#000000" size=<%=cFontSize%> face="<%=cFonts%>"><b>Año</b></font></td> 
   <td><input type="text" name="currYear" maxlength=4 size=4  value="<%=cYear%>"></td> 
   </tr> 
   <tr><td colspan=4 align="right"><input type="submit" value="Ir"></td></tr> 
   <input type="hidden" name="calAction" value="goto"> 
   </form> 
   </table> 
<%End Sub 


Private Function DaysInMonth() 
   Select Case cMonth 
	   Case 1,3,5,7,8,10,12 
		   DaysInMonth = 31 
	   Case 4,5,6,9,11 
		   DaysInMonth = 30 
	   Case 2 
		   If cYear Mod 4 Then 
			   DaysInMonth = 28 
		   Else 
			   DaysInMonth = 29 
		   End If 
   Case Else 
	   Exit Function 
   End Select 
End Function 

End Class  

%>