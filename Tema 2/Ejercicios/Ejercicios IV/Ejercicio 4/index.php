<!-- Escribir una página en PHP que contenga 5 cadenas de caracteres. El
código PHP deberá comprobar si las cadenas de caracteres comienzan
igual en parejas de 2. Para considerar que empiezan igual deberán tener
al menos los 3 primeros caracteres iguales. Mostrar el resultado en una
tabla de colores -->


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 4</title>
</head>
<body>
    <?php
    $cadenas = array("agua", "azul", "aguacero", "azucena", "romero");
    
    echo "<table border cellspacing='0'>";
    
    for($i = 0; $i <= count($cadenas); $i++){
        echo "<tr>";
        for($j = 0; $j <= count($cadenas); $j++){
            if($i == 0 && $j == 0){
                echo "<td>&nbsp</td>"; 
            }else if($i >= 1 && $j == 0){
                echo "<td>".$cadenas[$i - 1]."</td>";
            }else if($i == 0 && $j > 0){
                echo "<td>".$cadenas[$j - 1]."</td>";
            }else{
                if(strncmp($cadenas[$i - 1], $cadenas[$j - 1], 3) == 0){
                    echo "<td bgcolor='green'>&nbsp</td>";
                }else{
                    echo "<td bgcolor='red'>&nbsp</td>";
                }
                
            }
        } 
        echo "</tr>";
    }
    
    echo "</table>";
    ?>
    
    
</body>
</html>