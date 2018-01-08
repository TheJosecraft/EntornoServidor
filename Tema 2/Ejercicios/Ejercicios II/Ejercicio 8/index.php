<!--8. Crear un documento PHP que cree un array de al menos 4 posiciones.
Después el documento mostrará una tabla como la que se ve a
continuación: -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Ejercicio 8</title>
</head>
<body>
	<?php
	
	$numeros = array(3, 8, 7, -6);
	$cuadrado = 0;
	$cubo = 0;
	
	echo "<table cellspacing=0 style='color:white'colspan=30px><tr bgcolor='black'><td>Número</td><td>Cuadrado</td><td>Cubo</td></tr>";
	
	foreach($numeros as $posicion => $valores){
		$cuadrado = $valores * $valores;
		$cubo = $cuadrado * $valores;
		if($posicion % 2 == 0){
			echo "<tr bgcolor='#76923C'><td>$valores</td><td>$cuadrado</td><td>$cubo</td></tr>";
		}else{
			echo "<tr bgcolor='#9BBB59'><td>$valores</td><td>$cuadrado</td><td>$cubo</td></tr>";
		}
		
	}
	
	echo "</table>"
	?>
</body>
</html>