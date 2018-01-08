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
    echo "idioma: $_SESSION[idioma]";
    echo "<br> id de sesión: ".session_id();
    echo "<br> nombre de sesión: ".session_name();
    ?>
</body>
</html>