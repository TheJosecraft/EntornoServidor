<!--10. Crear un documento PHP que cree un vector de distintos tipos de datos.
El documento mostrará después para aquellos valores que sean
numéricos, cuales son primos y cuales no lo son. -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Ejercicio 10</title>
</head>
<body>
	<?php
	
	$vector = array("Hola", 23, "Jose", "Carlos", 35, 576, 1, true, false, "Arbol", 23.8, 54.2);
	
	$primos = [];
	$noprimos = [];
	
	foreach($vector as $valores){
		if(is_numeric($valores)){
			$cont = 0;
			for($i = 2; $i <= $valores; $i++){
				if($valores % $i == 0){
					if(++$cont > 1){
						$noprimos[] = $valores;
					}else{
						$primos[] = $valores;
					}
				}
			}
		}
	}
	
	echo "Primos";
	foreach($primos as $valores1){
		echo "$valores1 ";
	}
	
	echo "No primos";
	foreach($noprimos as $valores2){
		echo "$valores2 ";
	}
	?>
</body>
</html>