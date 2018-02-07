<!DOCTYPE html>
<!--5. Crear una página en ASP que muestre las tablas de multiplicar. Mostrará
cada una en una tabla del tipo: -->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ejercicio 4</title>
    <style>
    table{
      float: left;
      margin-left: 15px;
    }

    </style>
</head>
<body>
    <%
      For i = 1 To 10 
          %>

            <table border="1" class="datagrid">
            <%
            For j = 1 To 10
            %>
                <tr>
                    <td><% Response.Write ( i & " X " &  j ) %></td>
                    <td><% Response.Write (i * j) %></td>
                </tr>
             <%
            Next
            %>
            </table>  
          <%
      Next  
    %>
</body>
</html>