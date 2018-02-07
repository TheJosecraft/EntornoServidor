<!DOCTYPE html>
<!--3. Codificar una página en ASP que recorra los números desde el 260
hasta el 110, mostrando sólo los números que sean múltiplos de 3 o de
2. Hacerlo utilizando varios de los bucles existentes en ASP. -->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ejercicio 3</title>
</head>
<body>
   <%

fecha = date()

Response.Write ("Hoy es " & fecha & "<br>")

fecha = dateadd ("q", 2, fecha)

Response.Write ("Dentro de dos cuatrimestres será: " & fecha & "<br>")

Response.Write (MonthName(1))

Response.Write ("<br><br> Día 2: " & weekdayname(2, false, VBMONDAY))
%>
</body>
</html>