<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 1</title>
</head>
<body>
    <?php
    
    $dia = $_POST['dia'];
    $mes = $_POST['mes'];
    $anio = $_POST['anio'];
    
    $nacimiento = mktime(0, 0, 0, $mes, $dia, $anio);
    
    echo date('l', $nacimiento);
    ?>
</body>
</html>