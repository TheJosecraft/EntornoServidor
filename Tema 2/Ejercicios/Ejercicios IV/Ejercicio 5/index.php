<!--Crear un documento PHP que simule la función de reemplazo de los
editores de texto. El documento contendrá un array de varias posiciones
numéricas y alfanuméricas. Si la posición es una cadena, se
reemplazarán todas las veces que aparezca una “a” por una “A” y todas
las veces que aparezca una “b” por una “v”. Se deberán mostrar los
cambios en una tabla en la que se vean las posiciones antes y después
del cambio. -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 5</title>
</head>
<body>
   <?php
    $cadenas = array(30, 12, 65, "barco", "anguila", "butano", "arcon");
    $modificado = array();
    
    echo "<table border><th>Cadena</th><th>Posición</th>";
    echo "<tr>";
    for($i = 0; $i < count($cadenas); $i++){
        echo "<td>$cadenas[$i]</td><td>$i</td>";
        echo "</tr>";
    }
    
    echo "</table><br>";
    
    echo "<table border><th>Cadena</th><th>Posición</th>";
    echo "<tr>";
    for($i = 0; $i < count($cadenas); $i++){
        $modificado = str_replace('a', 'A', $cadenas);
        $modificado = str_replace('b', 'v', $modificado);
        echo "<td>$modificado[$i]</td><td>$i</td>";
        echo "</tr>";
    }
    
    echo "</table>";
    ?>
</body>
</html>