<!-- #include file ="../funciones.asp" -->
<!--#include file="../../clases/calendario.asp"--> 
<html> 
<head> 
   <title>Calendar Control</title> 
   <% get_header()%>
</head> 

<body> 
<div align="right"> 
<% 

Set myCal = New Calendar 
mycal.border=false 'Display Border around Calendar 
mycal.value = Now 'Sets Current Date 
mycal.calMonth = month(date()) 'Sets Current Month 
mycal.calYear = year(date()) 'Sets Current Year 
mycal.fontSize=3 'Sets Font Size 
mycal.showDate = True 'Not yet implemented 
mycal.showNav =True 'Show prev and next Navigation Links 
mycal.showForm = True 'Show Month and Year form 
mycal.display 'Display Calendar 

Set myCal = Nothing 

%> 

</div> 
</body> 
<%get_footer()%>
</html>