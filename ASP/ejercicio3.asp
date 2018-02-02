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
        For i = 260 To 110 Step -1
            If i MOD 2 = 0 Then
                Response.Write (i & " ")
            ElseIf i MOD 3 = 0 Then
                Response.Write (i & " ")
            End if
            
        Next
    %>
</body>
</html>