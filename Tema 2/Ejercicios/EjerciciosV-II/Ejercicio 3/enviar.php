<!--Escribir una página utilizando HTML – PHP en la que habrá 3 formularios
diferentes. Uno para rellenar datos de hombres, otro para rellenar datos de
mujeres y otro para rellenar datos de bebés.
En cada uno de los formularios se pedirá nombre, peso y altura.
La Web calculará el Índice de Masa Corporal de la persona teniendo en cuenta
que:
• Hombres: IMC = Peso (kg) / altura2
 (metros)
• Mujeres: IMC = Peso-5(kg) / altura2
 (metros)
• Bebés: IMC = Peso (kg) / altura (metros)
Al mostrar los datos deberá decir si la persona es hombre, mujer o bebé. 
-->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Ejercicio 3</title>
</head>
<body>
	<?php
	
	$datos = $_POST;
	
	if(isset($datos['hombre'])){
		$imc = $datos['peso'] / pow($datos['altura'], 2);
		echo $datos['nombre']." es un hombre y su IMC es de ". round($imc, 2);
	}elseif(isset($datos['mujer'])){
		$imc = $datos['peso'] - 5 / pow($datos['altura'], 2);
		echo $datos['nombre']." es una mujer y su IMC es de ". round($imc, 2);
	}elseif(isset($datos['bebe'])){
		$imc = $datos['peso'] / $datos['altura'];
		echo $datos['nombre']." es un bebé y su IMC es de ". round($imc, 2);
	}
	
	?>
</body>
</html>