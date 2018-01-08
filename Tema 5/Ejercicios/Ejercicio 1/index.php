<!--1. Hacer un sitio web, que al visitarlo cree las siguientes cookies:
 una cookie que tenga una vida de 2 horas.
 una cookie que tenga una vida de 3 días.
 una cookie que muera al cerrar el navegador.-->
<!DOCTYPE html>
<?php
setcookie("vida2", "2 horas", time() + (60*60*2));
setcookie("vida3", "3 horas", time() + (60*60*3));
setcookie("vida", "Cerrar");
?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 1</title>
</head>
<body>
    
</body>
</html>