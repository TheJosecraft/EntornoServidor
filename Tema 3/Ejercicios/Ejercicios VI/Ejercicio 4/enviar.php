<!--Programar una página en HTML – PHP que pida al usuario la fecha en la que tendría
que devolver el libro que tiene prestado.
Teniendo en cuenta que por cada día de retraso el usuario tendrá que pagar 3€,
mostrar un mensaje indicando si todavía le quedan días de préstamo, si lo está
devolviendo el día exacto y si no es así, la multa que tendrá que pagar.-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 4</title>
</head>
<body>
    <?php
    
    $fechaDev = $_POST['fecha'];
    
    $fechaAct = time();
    $fechaDev = strtotime($fechaDev);
    
    $diferencia = $fechaAct - $fechaDev;
    
    $dias = round($diferencia / (60 * 60 * 24));
    
    if($dias == 0){
        echo "Lo estás devolviendo el día exacto";
    }else if($dias < 0){
        echo "Aún te quedan ".abs($dias)." días de préstamo";
    }else if($dias > 0){
        $deuda = $dias * 3;
        echo "Tienes $dias días de retraso y la multa a pagar es de ".$deuda."€"; 
    }
    ?>
</body>
</html>