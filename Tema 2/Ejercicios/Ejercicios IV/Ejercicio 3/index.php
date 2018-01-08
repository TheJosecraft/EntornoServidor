<!--Codificar un documento PHP que partiendo de una cadena de
caracteres cualquiera, la rellene con 5 “-“ por delante y 3 “,” por detrás.
Después mostrará en una tabla la cadena antes de la transformación y
después de la transformación. 
-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 3</title>
</head>
<body>
    <?php
    $cadena = "Soy una cadena";
    
    echo "$cadena<br>";
    $longitud = strlen($cadena) + 5;
    $cadenaNueva = str_pad($cadena, $longitud, '-', STR_PAD_LEFT);
    $longitud = strlen($cadenaNueva) + 3;
    $cadenaNueva = str_pad($cadenaNueva, $longitud, '-', STR_PAD_RIGHT);
    
    echo $cadenaNueva;
    
    ?>
</body>
</html>