<!--
2. Crear un sitio Web que contenga 4 páginas. En la primera aparecerá un
formulario donde el usuario pueda elegir el color que quiere de fondo para su
visita y el tipo de letra que quiere ver. Se creará una sesión y se guardarán dichos
datos en ella. Durante el tiempo que la sesión permanezca abierta, el entorno
deberá mostrarse tal como el usuario eligió. En todas las páginas debe haber un
enlace que permita ir a la primera página y cambiar dicho entorno.
-->

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
    <form action="#" method="get">
        <label for="color">Elige un color</label>
        <select name="color" id="color">
            <option value="palegreen">Palegreen</option>
            <option value="cyan">Cyan</option>
            <option value="orangered">Orangered</option>
        </select>
        <br>
        <label for="fuente">Elige la fuente</label>
        <select name="fuente" id="fuente">
            <option value="Helvetica">Helvetica</option>
            <option value="Verdana">Verdana</option>
        </select>
        <br>
        <input type="submit" name="enviar">
    </form>
    <a href="prueba1.php">prueba 1</a>
    <a href="prueba2.php">prueba 2</a>
    <a href="prueba3.php">prueba 3</a>
    <?php
    if(isset($_GET['enviar'])){
        $_SESSION['color'] = $_GET['color'];
        $_SESSION['fuente'] = $_GET['fuente'];
    }
    ?>
</body>

</html>
