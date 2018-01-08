<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 4</title>
</head>
<body>
    <?php
    
    $numeros1 = array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
    $letras1 = array('f', 'k', 'p', 'u');
    $numeros2 = array(20, 26, 32, 38, 44, 50, 56, 62, 68);
    $letras2 = array('z', 'w', 't', 'q', 'n');
    $numeros3 = array(15, 18, 21, 24, 27, 30);
    $resultado = array_merge($numeros1, $letras1, $numeros2, $letras2, $numeros3);
    
    foreach($resultado as $valores){
        echo "$valores ";
    }
    ?>
</body>
</html>