<!--Crear un script PHP que muestre la siguiente tabla. Se exige respetar colores y tipos de
letra
NOTA: Crear el array de números aleatorios entre 1 y 1000
-->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Ejercicio 1</title>
</head>

<body>
    <?php
    
    $vector;
    for($i = 0; $i <= 11; $i++){
        $vector[$i] = mt_rand(1, 1000);
    }
    
    $par;
    $impar;
    
    $original = $vector;
    asort($original);
    $mayor = $original[0];
    sort($vector);
    $menor = $vector[0];
    echo "<table border=1 cellspacing=0>";
        echo "<tr bgcolor=#8064A2 style='color:white; font-weight:bold'><td>Vector original</td><td>";
            for($j = 0; $j <= count($original) - 1; $j++){
                if($j != count($original) - 1){
                    echo "$original[$j]-";
                }else{
                    echo "$original[$j]";
                }
                
            }
        echo "</td></tr>";
        echo "<tr><td><strong>Mayor</strong></td><td>$mayor</td></tr>";
        echo "<tr><td><strong>Menor</strong></td><td>$menor</td></tr>";
        echo "<tr><td><strong>Vector inverso</strong></td><td>";
        for($i = count($vector) - 1; $i >= 0; $i--){
            if($i > 0){
                    echo "$vector[$i]-";
                }else{
                    echo "$vector[$i]";
                    
                }
        }
        echo "</td></tr>";
        sort($original);
        echo "<tr><td><strong>Vector ordenado</strong></td><td>";
    
        for($i = 0; $i <= count($original) - 1; $i++){
            if($i != count($original) - 1){
                echo "$original[$i]-";
            }else{
                echo "$original[$i]";
            }
        }
        echo "</td></tr>";
    
        $j = 0;
        $x = 0;
        for($i = 0; $i <= count($vector) - 1; $i++){
            if($vector[$i] % 2 == 0){
                $par[$j] = $vector[$i];
                $j++;
            }else{
                $impar[$x] = $vector[$i];
                $x++;
            }
        }
        
        echo "<tr><td><strong>Vector solo pares</strong></td><td>";
        for($i = 0; $i <= count($par) - 1; $i++){
            if($i != count($par) - 1){
                echo "$par[$i]-";
            }else{
                echo "$par[$i]";
            }
            
        }
        echo "</td></tr>";
    
        echo "</td></tr>";
        echo "<tr><td><strong>Vector solo impares</strong></td><td>";
        for($i = 0; $i <= count($impar) - 1; $i++){
            if($i != count($impar) - 1){
                echo "$impar[$i]-";
            }else{
                echo "$impar[$i]";
            }
        }
        echo "</td></tr>";
    echo "</table>"
    ?>

    
</body>

</html>
