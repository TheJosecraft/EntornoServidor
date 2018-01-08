<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Ejercicio 9</title>
    <style>
        .tabla th {
            background-color: black;
            color: white;
            padding: 10px 10px 10px 5px;
            text-align: left;
        }
        .tabla tr:nth-child(even){
            background-color: forestgreen;
        }
        
        .tabla tr:nth-child(odd){
            background-color: limegreen;
        }
        .tabla tr{
            color:white;
        }
        
        .tabla td{
            padding: 8px;
        }

    </style>
</head>

<body>
    <?php
    
    $numero1 = $_GET['numero1'];
    $numero2 = $_GET['numero2'];
    $numero3 = $_GET['numero3'];
    $numero4 = $_GET['numero4'];
    $numeros = array($numero1, $numero2, $numero3, $numero4);
    
    echo "<table class='tabla' cellspacing=0><th>Número</th><th>Cuadrado</th><th>Cubo</th>";
        
    for($i = 0; $i < count($numeros); $i++){
        echo "<tr>";
        echo "<td>$numeros[$i]</td>";
        echo "<td>".$numeros[$i] * $numeros[$i]."</td>";
        echo "<td>".$numeros[$i] * $numeros[$i] * $numeros[$i]."</td>";
        echo "</tr>";
    }
        
    echo "</table>";
    ?>
</body>

</html>
