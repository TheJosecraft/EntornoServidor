<!--Codificar una página en ASP que cree 5 variables de distintos tipos. El
sitio deberá crear una tabla en la que se indique de alguna forma de qué
tipo es la variable:
Variable Es array Es entero Es cadena Es boolena Está vacía-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 3</title>
</head>
<body>
    <%
    
    numeros = array(1, 2, 3)
    numero = 23.5
    entero = 65
    bool = false
    vacia = ""
    cad = "Hola"
    
    valores = array(numeros, numero, entero, bool, vacia, cad)
    
    'valores(0) = numeros
    'valores(1) = numero
    'valores(2) = entero
    'valores(3) = bool
    'valores(4) = vacia
    'valores(5) = cad
    
    %>
    <table border="1">
        <thead>
            <tr>
                <th>Variable</th>
                <th>Es Array</th>
                <th>Es Entero</th>
                <th>Es Cadena</th>
                <th>Es Booleana</th>
                <th>Está vacía</th>
            </tr>
        </thead>
        <tbody>
            <%
            
            for i = 0 to 6
                response.write("<tr>")
                response.write("<td>" & valores(i) & "</td>")
                response.write("</tr>")
            next
            
            %>
        </tbody>
    </table>
    
</body>
</html>