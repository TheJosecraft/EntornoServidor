<!DOCTYPE html>
<!--4. Crear una página en ASP que utilizando un array, muestre los números
del 20 al 30 y después muestre la suma de todos ellos. -->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ejercicio 4</title>
</head>
<body>
    <%
        dim numeros(10) 
        dim resultado

        For i = 0 To 10
            numeros(i) = i + 20
        Next

        For i = 0 To 10
            resultado = resultado + numeros(i)
        Next

    Response.Write (resultado)
        
    %>
</body>
</html>