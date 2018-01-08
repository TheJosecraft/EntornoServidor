<!--Programar una página en HTML – PHP que pida al usuario su nombre completo
y sus notas de matemáticas, lengua, historia y dibujo. El usuario introducirá las
notas de forma numérica y la página web deberá mostrar su boletín de notas: -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 8</title>
    <style>
        .tabla{
            border: 1px solid palegreen;
            font-family: Verdana sans-serif;
        }
    </style>
</head>
<body>
    <?php
    $nombre = $_GET['nombre'];
    $matematicas = $_GET['matematicas'];
    $lengua = $_GET['lengua'];
    $historia = $_GET['historia'];
    $dibujo = $_GET['dibujo'];
    
    $notas = array($matematicas, $lengua, $historia, $dibujo);
    $nombres = array("Matemáticas", "Lengua", "Historia", "Dibujo");
    
    echo "<table border cellspacing=0 class='tabla'><th>Alumno</th><th>$nombre</th>";
    for($i = 0; $i < count($notas); $i++){
       if($notas[$i] == 10){
           echo "<tr><td>$nombres[$i]</td><td>Sobresaliente</td></tr>";
       }elseif($notas[$i] >= 8 && $notas[$i] <= 9){
           echo "<tr><td>$nombres[$i]</td><td>Notable</td></tr>";
       }elseif($notas[$i] >= 6 && $notas[$i] <= 7){
           echo "<tr><td>$nombres[$i]</td><td>Bien</td></tr>";
       }elseif($notas[$i] >= 5 && $notas[$i] < 6){
           echo "<tr><td>$nombres[$i]</td><td>Suficiente</td></tr>";
       }else{
           echo "<tr><td>$nombres[$i]</td><td>Insuficiente</td></tr>";
       }
    }
    echo "</table>";
    ?>
</body>
</html>