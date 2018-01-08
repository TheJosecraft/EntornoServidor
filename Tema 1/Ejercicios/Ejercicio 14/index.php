<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Ejercicio 14</title>
</head>

<body>
    <?php
        
        $i = 1;
        echo "<table border='1'";
        echo "<caption>Tabla de los 100 primeros números</caption>";
        while($i <= 100){
            echo "<td>$i</td>";
                
            if($i % 10 == 0){
                echo "</tr></tr>";
            }
                
            $i++;
        }
    
        echo "</tr></table>";
    
    ?>
</body>

</html>
