<!--Escribir una página en PHP que tenga un array de 5 cadenas. La página
deberá mostrar en una tabla cada cadena indicando de alguna forma si
dicha cadena contiene dentro el símbolo ‘p’. -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 1</title>
</head>
<body>
    <?php
    $cadenas = array("Casa", "Perro", "pajaro", "ordenador", "pan");
    
    echo "<table border>";
    echo "<tr><th>Cadena</th><th>Contiene 'p'</th></tr>";
    for($i = 0; $i < count($cadenas); $i++){
        echo "<tr>";
            if(preg_match("`p`", $cadenas[$i])){
                echo "</td><td>$cadenas[$i]</td><td>Sí</td>";
            }else{
                echo "<td>$cadenas[$i]</td><td>No</td>";
            }
        echo "</tr>";
    }
    echo "</table>";
    ?>
</body>
</html>