<!--2. Hacer un sitio Web que controle el número de veces que accede un determinado
navegador a su contenido. Cada vez que se acceda al sitio Web, éste deberá
mostrar un mensaje indicando cuántas veces se ha visitado el sitio Web.
-->
<!DOCTYPE html>
<?php
    if(isset($_COOKIE['visitas'])){
        setcookie("visitas", $_COOKIE['visitas'] + 1);
        
        echo "Has visitado esta página $_COOKIE[visitas] veces";
    }else{
        $num = 0;
        
        setcookie("visitas", $num);
    }


?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 2</title>
</head>
<body>
    
</body>
</html>