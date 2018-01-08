<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 6</title>
</head>
<body>
    <?php 
        
        $dia = date("N");
        
        if($dia >= 1 && $dia <= 5){
            echo "Es un día laboral";
        }else{
            echo "Es fin de semana";
        }
        
    ?>
</body>
</html>