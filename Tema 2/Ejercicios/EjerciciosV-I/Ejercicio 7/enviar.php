<!--Programar una página en HTML – PHP que pida al usuario un número y le diga
si el número es primo o no lo es. En caso de que no lo sea deberá mostrar una
tabla con los divisores de dicho número. 
-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 7</title>
</head>
<body>
    <?php
    $numero = $_GET['numero'];
    $primo = true;
    $divisores = array();    
    
    for($i = 1; $i <= $numero; $i++){
        if($numero % $i == 0){
            $primo = true;
        }else{
            $primo = false;
            $i = $numero;
        }
    }
    
    for($i = 1; $i <= $numero; $i++){
        if($numero % $i == 0){
            $divisores[] = $i;
        }
    }
    
    if($primo){
        echo "El número es primo"; 
    }else{
        echo "El número no es primo";
        echo "<table border><th>Divisores de $numero</th>";
        for($i = 0; $i < count($divisores); $i++){
            echo "<tr><td>$divisores[$i]</td></tr>";
        }
        echo "</table>";
    }
    
    ?>
</body>
</html>