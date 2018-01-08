<?php

$n1 = $_GET['n1'];
$n2 = $_GET['n2'];

$suma = $n1 + $n2;
$resta = $n1 - $n2;
$multiplicacion = $n1 * $n2;
$division = $n1 / $n2;

echo "La suma de $n1 y $n2 es: $suma <br>";
echo "La resta de $n1 y $n2 es: $resta <br>";
echo "La multiplicacion de $n1 y $n2 es: $multiplicacion <br>";
echo "La division de $n1 y $n2 es: $division <br>";
?>