<!--7. Codificar una página Web que cree un array de al menos 7 posiciones y
muestre todos los valores que tenga el array. Al final, también deberá
mostrarse la media de todos los valores numéricos que haya en el array,
indicando cuántos valores numéricos se han encontrado. -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Ejercicio 7</title>
</head>
<body>
	<?php
	
	$matriz = array("Casa", 5, 6, 12, "Teléfono", 234, 2, true, 23.8);
	
	$suma = 0;
	$media = 0;
	$contador = 0;
	
	foreach($matriz as $valores){
		echo "$valores ";
		if(is_numeric($valores)){
			$contador++;
			$suma += $valores;
		}
	}
	
	$media = $suma / $contador;
	echo "<br> La media es: $media<br>";
	echo "Se ha encontrado $contador valores numéricos";
	
	?>
</body>
</html>