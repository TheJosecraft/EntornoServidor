<!--Crear una página en PHP que muestre las tablas de multiplicar.
Mostrará cada una en una tabla del tipo: -->
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>Ejercicio 6</title>
</head>

<body>
	<?php
	

	
	
	$resultado = 0;
	for($i = 1; $i <= 10; $i++){
	echo "<table border='1' style='float:left'>";
		for($j = 1; $j <= 10; $j++){
			$resultado = $i * $j;
				if($j % 2 != 0){
					echo "<tr bgcolor='#EFD3D2'>";
				}else{
					echo "<tr bgcolor='#DFA7A6'>";
				}
				echo "<td><strong>".$i."x".$j."<strong></td><td>$resultado</td>";
				echo "</tr>";
		}
		echo "<br>";
		
	}
	
	echo "</table>";
	
	?>
<!--		table[border=1]>tr[bgcolor="red"]*10>td*2>strong{1x1}-->
</body>

</html>
