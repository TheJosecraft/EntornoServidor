<!--Codificar un documento PHP que tenga un array de varias cadenas. El
documento mostrará para cada una de las cadenas si contienen alguno
de los siguientes caracteres: $, C, / o @. Con que la cadena contenga
uno de ellos es suficiente. -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 2</title>
</head>
<body>
    <?php
    $cadenas = array("30€", "14.99$", "Coche", "micorreo@gmail.com", "casa", "6/2", "perro");
    
    echo "<table border>";
    echo "<th>Cadena</th><th>Contiene $, C, /, o @</th>";
    for($i = 0; $i < count($cadenas); $i++){
        echo "<tr>";
        if(preg_match("`[\$C/@]`", $cadenas[$i])){
            echo "<td>$cadenas[$i]</td>";
            echo "<td>Sí</td>";
        }else{
            echo "<td>$cadenas[$i]</td>";
            echo "<td>No</td>";
        }
        echo "</tr>";
    }
    echo "</table>";
    ?>
</body>
</html>