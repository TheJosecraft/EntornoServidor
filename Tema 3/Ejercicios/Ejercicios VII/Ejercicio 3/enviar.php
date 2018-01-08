<!--Escribir una función HTML – PHP “contar_letra_a()” que cuente el número de ‘a’ que hay en una frase. 
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
    
    echo 'Cadena: '.$cadena.'</br>';
    
    echo contar_letra_a($cadena);
    
    function contar_letra_a ($cad)
    {
        $cont = 0;
        for ($i = 0; $i < strlen($cad); $i++)
        {
            if ($cad[$i] == 'a')
            {
               $cont++;
            }
        }
        
        return $cont;
    }
    
    ?>
</body>

</html>
