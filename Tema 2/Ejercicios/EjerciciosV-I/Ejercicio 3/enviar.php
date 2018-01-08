<?php

$numero1 = $_GET['numero1'];
$numero2 = $_GET['numero2'];
$numero3 = $_GET['numero3'];

$numeros = array($numero1, $numero2, $numero3);

echo max($numeros);
echo "<br>";
echo min($numeros);
?>