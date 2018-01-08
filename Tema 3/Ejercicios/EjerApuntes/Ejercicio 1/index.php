<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Ejercicio 1</title>
</head>

<body>

    <form action="#" method="get">
        <label for="">Introduce la fecha</label>
        <input type="date" name="fecha">
        <input type="submit" name="enviar">
    </form>
    <?php
    
    if(isset($_GET['enviar'])){
        $fecha = $_GET['fecha'];
        
        echo "$fecha <br>";
            
        $marca = strtotime($fecha);
        
        echo "$marca <br>";
    }
    
    $marca = time();
    
    echo "$marca <br>";
    
    $tiempo = mktime(22, 0, 0, 7, 15, 1996);
    
    echo $tiempo;
    
    $dia = date('l', $tiempo);
    
    echo "$dia <br>";
    
    ?>
</body>

</html>
