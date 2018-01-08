<!--Programar una página en HTML – PHP que pida al usuario su día, mes y año de
nacimiento, la página le dirá si es mayor de edad o no. En caso de que hoy sea su
cumpleaños le mostrará una felicitación.
-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 3</title>
</head>
<body>
    <?php
    
    $dia = $_POST['dia'];
    $mes = $_POST['mes'];
    $anio = $_POST['anio'];
    
    $fechaNac = mktime(0, 0, 0, $mes, $dia, $anio);
    $diaNac = date('d', $fechaNac);
    $mesNac = date('m', $fechaNac);
    $fechaNac = date('y-m-d', $fechaNac);
    
    $fechaAct = time();
    $diaAct = date('d', $fechaAct);
    $mesAct = date('m', $fechaAct);
    $fechaAct = date('y-m-d', $fechaAct);
    
    $diferencia = abs(strtotime($fechaAct) - strtotime($fechaNac));
    
    $anios = $diferencia / 31556926;
    echo "Tienes $anios <br>";
    
    if($anios >= 18){
        echo "Eres mayor de edad <br>";
    }else{
        echo "Eres menor de edad <br>";
    } 
    
    if($mesNac == $mesAct && $diaNac == $diaAct){
        echo "¡FELICIDADES, ES TU CUMPLEAÑOS!";
    }
    
    ?>
</body>
</html>