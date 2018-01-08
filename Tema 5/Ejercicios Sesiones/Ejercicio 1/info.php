<!--
1. Crear un sitio Web que contenga 2 páginas. En la primera página se iniciará una
sesión y se guardará la hora a la que se ha iniciado la sesión. En la segunda
página deberá mostrarse el id de la sesión y la hora a la que se inició, así como el
tiempo que ha pasado desde que se inició la sesión.
-->
<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
    <?php
    echo "Id de la sesión: ".session_id();
    echo "<br> Hora de inicio de la sesión: ".date('H:m:s', $_SESSION['hora']);
    $tiempo = time() - $_SESSION['hora'];
    echo "<br> Tiempo transcurrido: $tiempo segundo(s)";
    ?>
</body>
</html>