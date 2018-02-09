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
    
    ' valores = array(numeros, numero, entero, bool, vacia, cad)
    
    ' valores(0) = numeros
    ' valores(1) = numero
    ' valores(2) = entero
    ' valores(3) = bool
    ' valores(4) = vacia
    ' valores(5) = cad
    
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
            
            
                response.write("<tr>")
                response.write("<td>" & typename(numeros) & "</td>")
                response.write("<td>" & isarray(numeros) & "</td>")
                response.write("<td>" & isnumeric(numeros) & "</td>")
                response.write("<td>" & typename(numeros) & "</td>")
                response.write("<td>" & typename(numeros) & "</td>")
                response.write("<td>" & isnull(numeros) & "</td>")
                response.write("</tr>")

                response.write("<tr>")
                response.write("<td>" & typename(numero) & "</td>")
                response.write("<td>" & isarray(numero) & "</td>")
                response.write("<td>" & isnumeric(numero) & "</td>")
                response.write("<td>" & typename(numero) & "</td>")
                response.write("<td>" & typename(numero) & "</td>")
                response.write("<td>" & isnull(numero) & "</td>")
                response.write("</tr>")

                response.write("<tr>")
                response.write("<td>" & typename(entero) & "</td>")
                response.write("<td>" & isarray(entero) & "</td>")
                response.write("<td>" & isnumeric(entero) & "</td>")
                response.write("<td>" & typename(entero) & "</td>")
                response.write("<td>" & typename(entero) & "</td>")
                response.write("<td>" & isnull(entero) & "</td>")
                response.write("</tr>")

                response.write("<tr>")
                response.write("<td>" & typename(bool) & "</td>")
                response.write("<td>" & isarray(bool) & "</td>")
                response.write("<td>" & isnumeric(bool) & "</td>")
                response.write("<td>" & typename(bool) & "</td>")
                response.write("<td>" & typename(bool) & "</td>")
                response.write("<td>" & isnull(bool) & "</td>")
                response.write("</tr>")

                response.write("<tr>")
                response.write("<td>" & typename(vacia) & "</td>")
                response.write("<td>" & isarray(vacia) & "</td>")
                response.write("<td>" & isnumeric(vacia) & "</td>")
                response.write("<td>" & typename(vacia) & "</td>")
                response.write("<td>" & typename(vacia) & "</td>")
                response.write("<td>" & isnull(vacia) & "</td>")
                response.write("</tr>")
                
                response.write("<tr>")
                response.write("<td>" & typename(cad) & "</td>")
                response.write("<td>" & isarray(cad) & "</td>")
                response.write("<td>" & isnumeric(cad) & "</td>")
                response.write("<td>" & typename(cad) & "</td>")
                response.write("<td>" & typename(cad) & "</td>")
                response.write("<td>" & isnull(cad) & "</td>")
                response.write("</tr>")
            
            %>
        </tbody>
    </table>
    
</body>
</html>