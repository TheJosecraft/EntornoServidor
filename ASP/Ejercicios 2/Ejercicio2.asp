<!-- Codificar una página en ASP que contenga 3 fechas. El sitio deberá
mostrar las tres fechas ordenadas, mostrando cuantos días, meses y
años hay entre fecha y fecha. NOTA: Una de las fechas deberá ser la
actual-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 2</title>
</head>
<body>
   <%
   fecha1 = Cdate("15/07/1996")
   fecha2 = date()
   fecha3 = Cdate("20/11/2020")
   
   diferencia1 = datediff("d", fecha2, fecha1)
   diferencia2 = datediff("d", fecha2, fecha3)
   
   
   response.write(fecha1 & "<br>")
   response.write(fecha2 & "<br>")
   response.write(fecha3 & "<br>")
   response.write(diferencia1 & "<br>")
   response.write(diferencia2 & "<br>")
   
   if (diferencia1 > 0 ) then
       
   end if
   
    %> 
</body>
</html>