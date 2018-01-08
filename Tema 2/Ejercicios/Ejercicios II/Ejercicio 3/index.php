<!--Codificar una página en PHP que recorra los números desde el 260
hasta el 110, mostrando sólo los números que sean múltiplos de 3 o de
2. Hacerlo utilizando los 3 tipos de bucles existentes en PHP. -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Ejercicio 3</title>
</head>
<body>
	<?php
	
	for($i = 260; $i >= 110; $i--){
		if($i % 3 == 0 || $i % 2 == 0){
			echo "$i ";
		}
	}
	
	echo "<br>";
	
	$j = 260;
	
	while($j >= 110){
		if($j % 3 == 0 || $j % 2 == 0){
			echo "$j ";
		}
		$j--;
	}
	
	echo "<br>";
	$x = 260;
	do{
		if($x % 3 == 0 || $x % 2 == 0){
			echo "$x ";
		}
		$x--;
	}while($x >= 110);
	?>
</body>
</html>