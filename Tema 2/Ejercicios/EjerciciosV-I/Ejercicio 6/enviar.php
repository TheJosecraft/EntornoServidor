<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>

<body>
    <?php
$nombre = $_GET['nombre'];
$edad = $_GET['edad'];

if($edad >= 18){
    echo "$nombre eres mayor de edad";
}else{
    echo "$nombre no eres mayor de edad";
}
?>
</body>

</html>
