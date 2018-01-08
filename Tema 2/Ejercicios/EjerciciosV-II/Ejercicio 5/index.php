<!--Crear una única página Web que estará dividida en dos partes. En la parte
superior habrá un formulario donde se pedirán los datos personales del usuario,
así como las notas que ha sacado en los últimos 4 exámenes. En la parte inferior,
habrá una tabla que representará el boletín de notas del alumno. Para ello se verá
una tabla como la de abajo:
Nombre y apellidos <nombre> <apellidos>
Curso <curso>
Nota 1 <nota>
Nota 2 <nota>
Nota 3 <nota>
Nota media <media>
La primera vez que se accede a la página, la tabla no debe aparecer. Después,
cada vez que el usuario le dé al botón enviar del formulario, se actualizarán los
datos. -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Ejercicio 5</title>
	<style>
		body{
			font-family: Helvetica, sans-serif;
		}
		
		input{
			margin: 10px;
		}
		
		tr{
			color: white;
			font-weight: bold;
		}
		
		tr:nth-child(odd) .notas{
			background-color: orange;
		}
		
		tr:nth-child(even) .notas{
			background-color: darkorange;
		}
		
		tr:nth-child(-n+2){
			background-color: black;
		}
		
		tr:nth-child(+n+3){
			background-color: darkorange;
		}
		
		td{
			padding: 10px;
		}
	</style>
</head>
<body>
	<form action="#" method="post">
		<label for="nombre">Nombre</label>
		<input type="text" name="nombre" id="nombre">
		<br>
		<label for="nombre">Apellidos</label>
		<input type="text" name="apellidos" id="apellidos">
		<br>
		<label for="nombre">Curso</label>
		<input type="text" name="curso" id="curso">
		<br>
		<label for="nombre">Nota 1</label>
		<input type="text" name="nota1" id="nota1">
		<br>
		<label for="nombre">Nota 2</label>
		<input type="text" name="nota2" id="nota2">
		<br>
		<label for="nombre">Nota 3</label>
		<input type="text" name="nota3" id="nota3">
		<br>
		<label for="nombre">Nota 4</label>
		<input type="text" name="nota4" id="nota4">
		<br>
		<input type="submit" name="enviar">
	</form>
	<br>
	<?php
	
	if(isset($_POST['enviar'])){
		$datos = $_POST;
		$notas = array($datos['nota1'], $datos['nota2'], $datos['nota3'], $datos['nota4']);
		$media = 0;	
		
		echo "<table cellspacing=0>";
		echo "<tr><td>Nombre y apellidos</td><td>".$datos['nombre']." ".$datos['apellidos']."</td></tr>";
		echo "<tr><td>Curso</td><td>".$datos['curso']."</td></tr>";
		for($i = 0; $i < count($notas); $i++){
			echo "<tr><td>Nota ".($i +1)."</td><td class='notas'>$notas[$i]</td></tr>";
			$media += $notas[$i];
		}
		
		$media /= count($notas);
	
		echo "</tr><td>Nota media</td><td class='notas'>$media</td></tr>";
		echo "</table>";
	}
		
		
	?>
</body>
</html>