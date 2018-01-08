<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 7</title>
</head>
<body>
    <?php
        $n1 = 89;
        $n2 = 70;
        $n3 = 120;
    
        if($n1 > $n2 && $n1 > $n3){
            echo "n1 es el mayor";
        }elseif($n2 > $n1 && $n2 > $n3){
            echo "n2 es el mayor";
        }else{
            echo "n3 es el mayor";
        }
    ?>
</body>
</html>