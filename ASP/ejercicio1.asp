<!DOCTYPE html>
<!--1. Codificar una página en ASP que muestre por pantalla las 10 primeras
potencias de un número.-->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ejercicio 1</title>
</head>
<body>
    <% 

        i = 0
        resultado = 1
        while (i < 10)
            resultado = 2 * resultado
            Response.Write(resultado & "<br>")
            i = i + 1
        wend
    %>
</body>
</html>