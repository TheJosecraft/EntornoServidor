<!--Escribir una función HTML – PHP “corregir_mayusculas()” que reciba una cadena y
ponga el primer carácter en mayúsculas y el resto en minúsculas 
-->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Ejercicio 1</title>
</head>

<body>
    <?php
    
    $cadena = $_POST['cadena'];
    
    echo $cadena.'</br>';
    
    corregir_mayusculas($cadena);
    
    echo $cadena.'</br>';
    
    function corregir_mayusculas (&$cad)
    {
        $cad = strtolower($cad);
        $cad = ucfirst($cad);
    }
    
    ?>
</body>

</html>
