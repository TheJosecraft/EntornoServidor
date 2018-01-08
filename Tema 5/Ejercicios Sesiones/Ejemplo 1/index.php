<?php

session_start();

session_name("MI_SESION");

$_SESSION['idioma'] = "Español";

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
    echo "<br> Nombre de la sesión: ".session_name();
    echo "<br> Idioma del usuario $_SESSION[idioma]";
    ?>
</body>
</html>