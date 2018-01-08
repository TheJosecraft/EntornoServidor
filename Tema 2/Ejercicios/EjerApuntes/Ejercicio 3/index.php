<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 2</title>
</head>
<body>
    <?php
    
    $persona = array('Nombre' => "Juan", "Altura" => 1.78, "Edad" => 25, "Pelo" => "Moreno", "Ciudad" => "Granada");
    
    $posiciones = array_keys($persona);
    $valores = array_values($persona);
    echo "<table border><tr>";
    
    for($i = 0; $i < count($persona); $i++){
        echo "<td>$posiciones[$i]</td>";
    }
    echo "<tr></tr>";
    
    for($i = 0; $i < count($persona); $i++){
        echo "<td>$valores[$i]</td>";
    }
    echo "</tr></table>";
    ?>
</body>
</html>