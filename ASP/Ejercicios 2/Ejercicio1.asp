<!--1. Codificar una página en ASP que genere un array de 10 números
aleatorios y muestre por pantalla una tabla del tipo:
Número Valor absoluto Raíz cuadrada Exponente
-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 1</title>
</head>
<body>
    <%
    
    max = 100
    min = -100
    
    Randomize
    
    dim numeros(10)
    
    for i = 0 to 10
        numeros(i) = Int((max - min + 1) * Rnd() + min) 
    Next
    
    %>
    
    <table border="1">
        <thead>
            <th>Número</th>
            <th>Valor absoluto</th>
            <th>Raíz cuadrada</th>
            <th>Exponente</th>
        </thead>
        <tbody>
            <%
            for i = 0 to 10
                response.write("<tr>")
                response.write("<td>" & numeros(i) & "</td>")
                response.write("<td>" & abs(numeros(i)) & "</td>")
                response.write("<td>" & Sqr(abs(numeros(i))) & "</td>")
                response.write("<td>" & numeros(i) & "</td>")
                response.write("</tr>")
            Next
            %>
        </tbody>
    </table>
    
</body>
</html>