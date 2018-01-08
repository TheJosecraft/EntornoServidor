<?php
$numero = $_GET['numero'];
$potencia = 1;


for($i = 1; $i <= 10; $i++){
    $potencia = $numero * $i;
    echo "$potencia ";
}
?>