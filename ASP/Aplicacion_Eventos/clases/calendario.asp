<%
Class Calendar 

Private cShowDate 
Private cValue 
Private cMonth 
Private cYear 
Private arrMonths(12) 
Private cShowNav 
Private cShowForm 
Private eventos()

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
   dim cEventos()
   diasEventos()
End Sub 

Private Sub Class_Terminate() 

End Sub 

private sub diasEventos()
set ObjConexion = new Conexion
ObjConexion.conectar()
i = 0

redim cEventos(1)

set datos = ObjConexion.consultar("SELECT DISTINCT fecha_evento FROM EVENTOS order by fecha_evento")

do while not datos.eof

	cEventos(i) = datos("fecha_evento")
	i = i + 1
	redim preserve cEventos(i)
	datos.moveNext
loop
ObjConexion.cerrarConexion()
end sub


Public Property Let Border(byRef uBorder) 
   cBorder = uBorder 
End Property 

Public Property Get Border() 
   Border = cBorder 
End Property 


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


   cDay = Weekday(cMonth & "/" & 1 & "/" & cYear) 

   Days = DaysInMonth()
   If cBorder Then%> 
	   <table border="0" cellpadding=0 bgcolor="#000000"> 
	   <tr><td bgcolor="#FFFFFF"> 
   <%End If%> 
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
	   <%i = 1 
	   For j = 1 to cDay %> 
		   <td align="center"></td> 
		   <%If i > 6 Then 
			   response.write("</tr><tr>") 
			   i = 0 
		   End If 
		   i = i + 1 
	   Next 
	   For j = 1 to Days%> 
		   <td align="center" ><b><%=j%></b></td> 
		   <%If i > 6 And j <= Days - 1 Then 
			   response.write("</tr><tr>") 
			   i = 0 
		   End If 
		   i = i + 1 
	   Next 
	   If i > 1 Then 
		   For m = i to 7%> 
			   <td align="center"></td> 
		   <%Next 
	   End IF%> 
	 </tr> 
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