<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 8</title>
</head>
<body>
    <?php
        
        $cad1 = "buho";
        $cad2 = "cola";
        $cad3 = "arbol";
    
        if($cad1 < $cad2 && $cad1 < $cad3){
            echo $cad1. " ";
            if($cad2 < $cad3){
                echo "$cad2 $cad3";
            }else{
                echo "$cad3 $cad2";
            }
        }elseif($cad2 < $cad1 && $cad2 < $cad3){
            echo $cad2. " ";
            if($cad1 < $cad3){
                echo "$cad1 $cad3";
            }else{
                echo "$cad3 $cad1";
            }
        }else{
            echo $cad3. " ";
            if($cad2 < $cad1){
                echo "$cad2 $cad1";
            }else{
                echo "$cad1 $cad2";
            }
        }
    ?>
</body>
</html>