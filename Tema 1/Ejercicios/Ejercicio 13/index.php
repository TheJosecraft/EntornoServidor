<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 13</title>
</head>
<body>
    <?php
        $factorial = 1;
        $i = 1;
        
        while($i <= 15){
            $factorial *= $i;
            $i++;
        }
        echo "El factorial de 15 es: $factorial";
    ?>
</body>
</html>