<!--Programar una página en HTML – PHP que a través de formularios pida al usuario
día, mes y año.
La página le mostrará al usuario el calendario del mes y el año que se le haya pasado,
resaltando el día que el usuario eligió.
Además la página (utilizando una casilla de verificación) preguntará si se quiere
visualizar el mes anterior y (con otra casilla de verificación) el mes siguiente.
Mostrando, por tanto, lo que se le indique.-->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Ejercicio 5</title>
    <link rel="stylesheet" href="css/main.css">
</head>

<body>
    <?php
    
    $dia = $_POST['dia'];
    $mes = $_POST['mes'];
    $anio = $_POST['anio']; 
    
    if(isset($_POST['mesAnt'])){
       echo '<h1>'.nombreMes($mes - 1, $dia, $anio).'</h1>';
        calendario(dias($mes - 1, $dia, $anio), diaSemana($mes - 1, $dia, $anio),  $dia);
    }
    
    echo '<h1>'.nombreMes($mes, $dia, $anio).'</h1>';
    calendario(dias($mes, $dia, $anio), diaSemana($mes, $dia, $anio), $dia, true);
    
    if(isset($_POST['mesPos'])){
        echo '<h1>'.nombreMes($mes + 1, $dia, $anio).'</h1>';
        calendario(dias($mes + 1, $dia, $anio), diaSemana($mes + 1, $dia, $anio), $dia);
    }
    
    function calendario ($dias, $diaS ,$d = 0, $color = false)
    {
        $cont = 0;
        echo '<table class=calendar><th>L</th><th>M</th><th>X</th><th>J</th><th>V</th><th>S</th><th>D</th><tr>';
        for ($i = 1; $i < $diaS ; $i++)
        {
            echo '<td>&nbsp</td>';
            $cont++;
        }
        for ($i = 1; $i <= $dias; $i++)
        {
            if ($cont % 7 == 0)
            {
                echo '</tr><tr>';
            }
            
            if($color && $i == $d){
                echo '<td bgcolor=palegreen>'.$i.'</td>'; 
                $cont++;
            }else{
                echo '<td>'.$i.'</td>'; 
                $cont++;
            }
            
               
        }
        
        echo '</tr></table>';
    }
    
    function nombreMes ($m, $d, $a)
    {
        $marca = mktime(0, 0, 0, $m, $d, $a);
    
        return date('F', $marca);
    }
    
    function dias ($m, $d, $a)
    {
        $marca = mktime(0, 0, 0, $m, $d, $a);
    
        return date('t', $marca);
    }
    
    function diaSemana ($m, $d, $a)
    {
        $marca = mktime(0, 0, 0, $m, $d, $a);
    
        return date('N', $marca);
    }
    ?>
</body>

</html>
