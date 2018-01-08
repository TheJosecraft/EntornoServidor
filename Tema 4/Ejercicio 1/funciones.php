<?php
    $conexion = mysqli_connect('localhost', 'root', '', 'centro');
    mysqli_set_charset($conexion, 'utf8');
    if(!$conexion){
        echo "Ha habido un error en la conexión";
    }else{
        return $conexion;
    }
?>
