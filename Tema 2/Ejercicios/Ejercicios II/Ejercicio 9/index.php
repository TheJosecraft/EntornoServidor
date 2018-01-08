<!--9. Codificar una página en PHP que muestre dentro de una tabla las
primeras 15 posiciones de la serie de Fibonacci, mostrando siempre por
qué posición va.-->
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Ejercicio 9</title>
	</head>
	<body>
		<?php
		$fibonacci = 1;
		$anterior = 0;
		$numeros[0] = 0;

		for($j = 1; $j < 15; $j++){

			$suma = $fibonacci + $anterior;
			$fibonacci = $anterior;
			$anterior = $suma;

			$numeros[] = $suma;

		}
		echo "<table border='1' bordercolor='black' cellspacing=0>";
		for($i = 1; $i <= 2; $i++){
			echo "<tr>";
			foreach($numeros as $posicion => $valores){
				
				if($i %2 != 0){
					$posicion++;
					echo "<td bgcolor='#FFFFFF' width='35px'><strong>$posicion</strong></td>";
				}else{
					echo "<td bgcolor='#C0C0C0'>$valores</td>";
				}
				
			}
		}

		echo "</tr>";
		echo "</table>";
		?>

		<!--
<table border="">
<tr>
<td>item1</td>
<td>item2</td>
<td>item3</td>
<td>item4</td>
<td>item5</td>
<td>item6</td>
<td>item7</td>
<td>item8</td>
<td>item9</td>
<td>item10</td>
<td>item11</td>
<td>item12</td>
<td>item13</td>
<td>item14</td>
<td>item15</td>
</tr>
<tr>
<td>item1</td>
<td>item2</td>
<td>item3</td>
<td>item4</td>
<td>item5</td>
<td>item6</td>
<td>item7</td>
<td>item8</td>
<td>item9</td>
<td>item10</td>
<td>item11</td>
<td>item12</td>
<td>item13</td>
<td>item14</td>
<td>item15</td>
</tr>
</table>
-->
	</body>
</html>