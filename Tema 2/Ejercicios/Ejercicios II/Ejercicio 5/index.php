<!--5. Crear una página en PHP que tenga 3 cadenas de caracteres y las
muestre en una tabla ordenadas en orden alfabético. -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Ejercicio 5</title>
</head>
<body>
	<?php
		
	$cad1 = "Perro";
	$cad2 = "Pajaro";
	$cad3 = "Rinoceronte";
	
	echo "<table border><tr>";
	if($cad1 < $cad2 && $cad1 < $cad3){
            echo "<td>$cad1</td>";
            if($cad2 < $cad3){
                echo "<td>$cad2</td><td>$cad3</td>";
            }else{
                echo "<td>$cad3</td><td>$cad2";
            }
        }elseif($cad2 < $cad1 && $cad2 < $cad3){
            echo "<td>$cad2</td>";
            if($cad1 < $cad3){
                echo "<td>$cad1</td><td>$cad3</td>";
            }else{
                echo "<td>$cad3</td><td>$cad1";
            }
        }else{
            echo "<td>$cad3</td>";
            if($cad2 < $cad1){
                echo "<td>$cad2</td><td>$cad1</td>";
            }else{
                echo "<td>$cad1</td><td>$cad2</td>";
            }
        }
	echo "</tr></table>";
	?>
</body>
</html>