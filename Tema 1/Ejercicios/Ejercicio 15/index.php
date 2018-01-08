<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 15</title>
</head>
<body>
    <?php
        $c['marca'] = "Chevrolet";
        $c['modelo'] = "Aveo";
        $c['año'] = 2015;
        $c['plazas'] = 5;
        $c['combustible'] = "Gasolina";
    
        echo "<table border> <tr> <td> Marca </td><td> Modelo </td><td> Año </td><td> Plazas </td><td> Combustible </td></tr>";
            
        echo "<tr>";
        
        foreach($c as $variable){
            echo "<td>$variable </td>";
        }
        echo "</tr></table>";
    
    ?>
</body>
</html>