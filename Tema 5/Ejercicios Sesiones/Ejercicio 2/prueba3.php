<?php
session_start();

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 2</title>
</head>
<body style="background-color:<?php echo $_SESSION['color'] ?>;font-family:<?php echo $_SESSION['fuente'] ?>">
    <a href="index.php">Volver</a>
</body>
</html>