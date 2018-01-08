<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Ejercicio 11</title>
</head>

<body>
    <?php
        echo "<table border='1'>";
        echo "<caption>Tabla de los 100 primeros números</caption>";
        for($i = 1; $i <= 100; $i++){
            
            echo "<td width='30px' align='center'>$i</td>";
            if($i % 10 == 0){
                echo "</tr><tr>";
            }
        }
        echo "</table>";
    ?>


</body>

</html>
