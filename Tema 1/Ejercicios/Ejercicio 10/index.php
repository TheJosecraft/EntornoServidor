<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 10</title>
</head>
<body>
    <?php
        $factorial = 1;
    
        for($i = 15; $i > 1; $i--){
            $factorial *= $i;
        }
    
        echo "El factorial de 15 es: $factorial";
    
    ?>
</body>
</html>