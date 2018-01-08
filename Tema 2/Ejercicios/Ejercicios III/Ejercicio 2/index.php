<!--Crear un script PHP que muestre la siguiente tabla. (Utilizar arrays asociativos)
Ciudad Población
Granada 150.000
Madrid 3.000.000
Barcelona 2.879.200
Málaga 240.000
Sevilla 500.00
Valencia 1.584.600
Tarragona 485.210
a. Mostrar después el array asociativo:
i. Ordenado por orden alfabético de ciudad.
ii. Ordenado por cantidad de población
b. Mostrar una tabla sólo con la ciudad con más población y la ciudad con menos
población.
NOTA: Respetar colores y tipos de letra.-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 2</title>
</head>
<body>
    <?php
    
    $vector = array("Granada" => 150000, "Madrid" => 3000000, "Barcelona" => 2879200, "Málaga" => 240000, "Sevilla" => 500000, "Valencia" => 1584600, "Tarragona" => 485210);
    $copia;
    
    $i = 0;
    echo "<table border cellspacing=0>";
    echo "<tr bgcolor=#9BBB59 style='color:white'><td><strong>Ciudad</strong></td><td><strong>Población</strong></td></tr>";
    foreach($vector as $posicion => $valores){
        
        if($i % 2 == 0){
            echo "<tr><td><strong>$posicion </strong></td><td> $valores </td></tr>";
        }else{
            echo "<tr bgcolor=#E6EED5><td><strong> $posicion </strong></td><td> $valores </td></tr>";
        }
        $i++;
        
    }
    echo "</table><br>";
    $copia = $vector;
    ksort($copia);
    $i = 0;
    echo "<h2>Alfabético</h2>";
    echo "<table border cellspacing=0>";
    echo "<tr bgcolor=#9BBB59 style='color:white'><td><strong>Ciudad</strong></td><td><strong>Población</strong></td></tr>";
    foreach($copia as $posicion => $valores){
        
        if($i % 2 == 0){
            echo "<tr><td><strong>$posicion </strong></td><td> $valores </td></tr>";
        }else{
            echo "<tr bgcolor=#E6EED5><td><strong> $posicion </strong></td><td> $valores </td></tr>";
        }
        $i++;
        
    }
    echo "</table>";
    asort($vector);
    
    $i = 0;
    echo "<h2>Cantidad de población</h2>";
    echo "<table border cellspacing=0>";
    echo "<tr bgcolor=#9BBB59 style='color:white'><td><strong>Ciudad</strong></td><td><strong>Población</strong></td></tr>";
    foreach($vector as $posicion => $valores){
        
        if($i % 2 == 0){
            echo "<tr><td><strong>$posicion </strong></td><td> $valores </td></tr>";
        }else{
            echo "<tr bgcolor=#E6EED5><td><strong> $posicion </strong></td><td> $valores </td></tr>";
        }
        $i++;
        
    }
    echo "</table><br>";
    
    reset($vector);
    
    $menor = array(key($vector), current($vector));
    
    end($vector);
    
    $mayor = array(key($vector), current($vector));
    
    echo "<h2>Mayor y Menor</h2>";
    echo "<table border cellspacing=0>";
    echo "<tr bgcolor=#9BBB59 style='color:white'><td><strong>Ciudad</strong></td><td><strong>Población</strong></td></tr>";
    echo "<tr><td><strong> $menor[0] </strong></td><td> $menor[1] </td></tr>";
    echo "<tr bgcolor=#E6EED5><td><strong> $mayor[0] </strong></td><td> $mayor[1] </td></tr>";
    echo "</table><br>";
    
    ?>
</body>
</html>