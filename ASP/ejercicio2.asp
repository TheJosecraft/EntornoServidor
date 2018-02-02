<!DOCTYPE html>
<!--2. Crear un documento ASP que muestre por pantalla los múltiplos que
existen de 7 desde 1 hasta 100. Hacerlo utilizando los 6 tipos de bucles
que existen en ASP.-->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ejercicio 2</title>
</head>
<body>
    <% 

        i = 0
        while (i < 100)
            If i MOD 7 = 0 Then
                Response.Write(i & "<br>")
            End if
            i = i + 1
        wend

        Response.Write ("<br>")

        For i = 0 To 100 Step 7
             Response.Write(i & "<br>")
        Next

        Response.Write ("<br>")

        For i = 0 To 100
            If i MOD 7 = 0 Then
                Response.Write(i & "<br>")
            End if
        Next

        Response.Write ("<br>")

        j = 0

        Do While (j < 100)
            If j MOD 7 = 0 Then
                Response.Write(j & "<br>")
            End if
            j = j + 1
        Loop

        Response.Write ("<br>")

        k = 0

        Do Until (k > 100)
            If k MOD 7 = 0 Then
                Response.Write(k & "<br>")
            End if

            k = k + 1
        Loop
        
        Response.Write ("<br>")

        f = 0

        Do 
            If f MOD 7 = 0 Then
                Response.Write(f & "<br>")
            End if

            f = f + 1
        Loop until(f > 100)

        Response.Write ("<br>")

        v = 0

        Do

            If v MOD 7 = 0 Then
                Response.Write(v & "<br>")
            End if

            v = v + 1
        Loop while(v < 100)

    %>
</body>
</html>