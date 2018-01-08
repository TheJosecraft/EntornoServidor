<!--Crear un una única página que pida al usuario un número y una imagen. La
página deberá comprobar que el archivo es una imagen y que no supera los 2
megas de tamaño. Si se cumple esto, se deberá guardar la imagen en el servidor y
mostrar debajo del formulario una tabla con la imagen repetida tantas veces como
el usuario haya elegido.
Independientemente del número de veces que el usuario quiera repetir la imagen,
la tabla sólo podrá tener 3 celdas por fila. -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Ejercicio 4</title>
</head>
<body>
	<?php
	
	$datos = $_POST;
	$archivo = $_FILES;
	
	$tam = ($archivo['imagen']['size'] / 1024) / 1024;
	if(($archivo['imagen']['type'] == "image/jpeg" || $archivo['imagen']['type'] == "image/jpeg") && $tam <= 2){
		move_uploaded_file($archivo['imagen']['tmp_name'], "img");
		echo "<table><tr>";
		for($i = 0; $i < $datos['numero']; $i++){
			if($i % 3 == 0 && $i != 0){
				echo "</tr><tr>";
			}
			echo "<td><img width='600px' src='img'></td>";
		}
		
		echo "</table>";
	}
	
	?>
</body>
</html>