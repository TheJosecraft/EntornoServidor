<!--Programar una página en HTML – PHP que a través de formularios pida al usuario
dos fechas completas (día, mes y año) y le diga cuántos días han pasado entre una y
la otra.-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 2</title>
</head>
<body>
    <?php
    
    $fecha1 = $_POST['fecha1'];
    $fecha2 = $_POST['fecha2'];
    
    echo "$fecha1 <br>";
    
    $fecha1 = strtotime($fecha1);
    $fecha2 = strtotime($fecha2);
    
    echo "Fecha 1: $fecha1 <br>";
    
    echo "Fecha 2: $fecha2 <br>";
    
    if($fecha1 > $fecha2){
        $tiempo = ($fecha1 - $fecha2) / 86400;
    }else{
        $tiempo = ($fecha2 - $fecha1) / 86400;
    }
    
    
    echo "Han pasado $tiempo día(s)<br>";
    
    ?>
</body>
</html>