<!--Codificar un documento PHP que tenga un array de 10 cadenas. Se
mostrará en una tabla cuantas veces aparece la letra “r” en cada
cadena. No se tendrán en cuenta mayúsculas ni minúsculas. -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 6</title>
</head>
<body>
    <?php
    
    $cadenas = array("cardena01", "cadena02", "cadena03", "cadena04", "cadena05", "cadena06", "cardena07", "carrrrdena08", "caRRRrrdena09", "cadena10");
    $contador = 0;
    echo "<table border>";
    echo "<th>Cadenas</th><th>Veces que aparece 'r'</th>";
    echo "<tr>";
    for($i = 0; $i < count($cadenas); $i++){
        $contador = substr_count($cadenas[$i], 'r');
        echo "<td>$cadenas[$i]</td><td>$contador</td>";
        
        echo "</tr>";
    }
    echo "</table>";
    ?> 
</body>
</html>