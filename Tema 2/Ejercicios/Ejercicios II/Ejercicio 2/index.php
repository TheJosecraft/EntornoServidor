<!--Crear un documento PHP que muestre por pantalla los múltiplos que
existen de 7 desde 1 hasta 100. Hacerlo utilizando los 3 tipos de bucles
que existen en PHP. -->
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>Ejercicio 2</title>
</head>

<body>
	<?php
	 echo "Bucle for <br>"; 
    for($i = 1; $i <= 100; $i++){
      if($i % 7 == 0){
			echo "$i ";
		}
     }
	 	
	 $j = 1;
	 
	 echo "<br>";
	 	
	 echo "Bucle while <br>";
	 	while($j <= 100){
			 if($j % 7 == 0){
				  echo "$j ";
			 }
			 $j++;
		}
	 echo "<br>";
	 $x = 1;
	 
	 echo "Bucle do while <br>";
	 	do{
			 if($x % 7 == 0){
				  echo "$x ";
			 }
			 $x++;
		}while($x <= 100);
    ?>
</body>

</html>
