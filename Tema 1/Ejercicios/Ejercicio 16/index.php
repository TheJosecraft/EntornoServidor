<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 16</title>
</head>
<body>
    <?php
    
        $num[0] = 34;
        $num[1] = 23;
        $num[2] = 67;
    
        $menor = $num[0];
    
        foreach($num as $i){
            if($i < $menor){
                $menor = $i;
            }
        }
    
        echo "El menor es: $menor";
    ?>
</body>
</html>