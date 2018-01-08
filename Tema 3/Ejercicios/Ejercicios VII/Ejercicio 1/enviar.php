<!--Escribir una función HTML – PHP “corregir_primera_letra()” que reciba una cadena
y convierta la primera letra en mayúscula. 
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
    
    corregir_primera_letra($cadena);
    
    echo $cadena.'</br>';
    
    function corregir_primera_letra (&$cad)
    {
        $cad = ucfirst($cad);
    }
    
    ?>
</body>

</html>
