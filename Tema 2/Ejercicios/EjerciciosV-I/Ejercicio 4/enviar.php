<?php
$numero1 = $_GET['numero1'];
$numero2 = $_GET['numero2'];
$numero3 = $_GET['numero3'];

$numeros = array($numero1, $numero2, $numero3);

$suma = $numero1 + $numero2;
$sumaTodos = $numero1 + $numero2 + $numero3;

echo "<table border>";
for($i = 1; $i <= 3; $i++){
    echo "<tr><td>Valor $i</td><td>".$numeros[$i - 1]."</td></tr>";
}

echo "<tr><td>valor1 + valor2</td><td>$suma</td></tr>";
echo "<tr><td>valor2 * valor3</td><td>".$numero2 * $numero3."</td></tr>";
echo "<tr><td>valor1 / valor3</td><td>".$numero1 / $numero3."</td></tr>";
echo "<tr><td>valor1 + valor2 + valor3</td><td>$sumaTodos</td></tr>";
echo "</table>";
?>