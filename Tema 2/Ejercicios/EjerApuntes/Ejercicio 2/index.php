<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 2</title>
</head>
<body>
    <?php
    
    $persona = array('Nombre' => "Juan", "Altura" => 1.78, "Edad" => 25, "Pelo" => "Moreno", "Ciudad" => "Granada");
    $recorrido = false;
    
    print_r($posicion);
    echo "<table border>";
    
    do{
        $datos = each($persona);
        echo "<tr>";
        echo "<td>".$datos['key']."</td>";
        echo "<td>".$datos['value']."</td>";
        echo "</tr>";     
    }while(next($persona));
    echo "</table>";
    ?>
</body>
</html>