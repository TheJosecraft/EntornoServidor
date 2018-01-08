<!--Codificar una página en PHP que muestre por pantalla las 10 primeras
potencias de un número. -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 1</title>
</head>
<body>
    <?php
      
    $base = 2;
    $resultado = 1;
    
    for($i = 1; $i <= 10; $i++){
        $resultado *= $base;
        echo "$resultado ";
    }
    ?>
</body>
</html>