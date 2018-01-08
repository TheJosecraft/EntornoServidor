<!--12. Utilizando bucles hacer una página web un PHP que muestre el
calendario de todo un año. La página tendrá una tabla por cada mes en
la que habrá, una fila con el nombre del mes, una fila con cada día de la
semana y las celdas necesarias para los días del mes. El año empezará
en lunes (1 de enero = lunes ). -->
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Ejercicio 12</title>
	</head>
	<body>
		<?php
		$meses = array("Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre");
		
		$dias = array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
		
		for($x = 0; $x <= 11; $x++){

			echo "<h2>".$meses[$x]."</h2>";
			echo "<table border cellspacing=0>";
			$aux = $dias[$x];
			for($i = 0; $i < $aux; $i++){

				if($i % 7 == 0 ){
					echo "<tr>";
				}

				echo "<td width=20px>".($i + 1)."</td>";
				
			}
			echo "</tr>";
			echo "</table>";
			echo "<br>";

		}


		?>
	</body>
</html>