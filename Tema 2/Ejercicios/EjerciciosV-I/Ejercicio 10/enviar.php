<!--10. Programar una página en HTML – PHP que utilizando una lista desplegable deje
al usuario elegir qué tabla de multiplicar quiere visualizar. Además le dejará
elegir (utilizando un conjunto de tipo radio) en qué color quiere visualizarla.
Después, la página Web le mostrará dicha tabla de multiplicar utilizando el color
elegido por el usuario. 
-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 10</title>
</head>
<body>
    <?php
    
    $numero = $_GET['tabla'];
    $color = $_GET['color'];
    
    echo "<table border bgcolor=$color><th>Operación</th><th>Resultado</th>";
    
    for($i = 1; $i <= 10; $i++){
        echo "<tr><td>".$numero."x".$i."</td><td>".$numero * $i."</td></tr>";
    }
    
    echo "</table>";
    ?>
</body>
</html>