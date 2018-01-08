<!--3. Hacer un sitio Web que controle la fecha de último acceso del usuario. En caso
de que sea la primera vez que el usuario accede, le dará un saludo diferente que si
es usuario asiduo. Además, en caso de que no sea la primera vez que accede le
deberá mostrar la fecha y hora de último acceso.-->
<!DOCTYPE html>
<?php
if(isset($_COOKIE['fecha'])){
    echo "Bienvenido <br>";
    echo "Tu último acceso fue en: " . date("d/m/Y H:m:s", $_COOKIE['fecha']);
    setcookie("fecha", time());
}else{
    setcookie("fecha", time());
    echo "Bienvenido";
}
?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 3</title>
</head>
<body>
    
</body>
</html>