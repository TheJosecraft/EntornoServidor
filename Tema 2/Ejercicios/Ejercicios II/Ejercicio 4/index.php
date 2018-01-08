<!--4. Crear una página en PHP que utilizando un array, muestre los números
del 20 al 30 y después muestre la suma de todos ellos. -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Ejercicio 4</title>
</head>
<body>
	<?php
	$numeros = [];
	
	for($i = 20; $i <= 30; $i++){
		$numeros[] = $i;
	}
	
	$suma = 0;
	foreach($numeros as $valores){
		$suma += $valores;
	}
	
	echo "La suma de los números del 20 al 30 es: $suma ";
	
	?>
</body>
</html>