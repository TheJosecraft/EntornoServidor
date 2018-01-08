<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 1</title>
</head>
<body>
    <?php
    
    $persona = array('Nombre' => "Juan", "Altura" => 1.78, "Edad" => 25, "Pelo" => "Moreno", "Ciudad" => "Granada");
    $recorrido = false;
    
    echo "<table border>";
    
    do{
        echo "<tr>";
        echo "<td>".key($persona)."</td>";
        echo "<td>".current($persona)."</td>";
        echo "</tr>";     
    }while(next($persona));
    echo "</table>";
    ?>
</body>
</html>