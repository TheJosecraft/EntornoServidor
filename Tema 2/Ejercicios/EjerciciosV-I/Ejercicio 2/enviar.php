<?php
$numero = $_GET['numero'];
$resultado = 0;
echo "<table border><th>Multiplicacion</th><th>Resultado</th>";
for($i = 1; $i <= 10; $i++){
    $resultado = $numero * $i;
    echo "<tr><td>$numero * $i</td><td>$resultado</td></tr>";
}
echo "</table>"
?>