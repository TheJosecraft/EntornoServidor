<!--11. Crear un documento PHP que cree un vector con 15 posiciones. El
vector contendrá valores entre 0 y 10. Mostrar después una tabla con las
notas reales obtenidas por los alumnos: 0 – 4 = Suspenso, 5 =
Aprobado, 6 = Bien, 7 – 8 = Notable, 9 = Sobresaliente, 10 = Matricula
de honor. -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Ejercicio 11</title>
</head>
<body>
	<?php
	
	$notas = array(2, 5, 2, 6, 4, 1, 8, 9, 10, 3, 5, 2, 7, 4, 0);
	
	echo "<table border><tr>";
	foreach($notas as $posicion => $valores){
		$posicion++;
		echo "<tr><td> Alumno $posicion";
		switch($valores){
			case 0:
			case 1:
			case 2:
			case 3:
			case 4:
				echo "<td>Suspenso</td>";
				break;
			case 5:
				echo "<td>Aprobado</td>";
				break;
			case 6:
				echo "<td>Bien</td>";
				break;
			case 7:
			case 8:
				echo "<td>Notable</td>";
				break;
			case 9:
				echo "<td>Sobresaliente</td>";
				break;
			case 10:
				echo "<td>Matrícula de honor</td>";
				break;
		}
		echo "</td></tr>";
	}
	echo "</tr>"
	?>
</body>
</html>