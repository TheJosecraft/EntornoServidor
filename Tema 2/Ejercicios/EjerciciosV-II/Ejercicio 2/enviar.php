<!--2. Escribir una página en HTML – PHP que permita a un usuario registrarse en una
empresa de empleo. En la página HTML habrá un formulario donde el usuario
podrá introducir sus datos personales y además se le permitirá subir su
Curriculum Vitae.
La página deberá asegurarse de que el Curriculum se sube en formato PDF y que
no supera los 2 Mb de tamaño. Si se cumplen los dos requisitos, el Curriculum se
guardará y como nombre se pondrá el DNI de la persona. En caso de que no se
cumplan los requisitos, el sitio deberá dar un aviso y volver a enviar a la página
principal. 
-->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Ejercicio 2</title>
</head>
<body>
	<?php
	
	$datos = $_POST;
	$archivo = $_FILES;
		
	$tam = ($archivo['cv']['size'] / 1024) / 1024;
	if($archivo['cv']['type'] == "application/pdf" && $tam <= 2){
		move_uploaded_file($archivo['cv']['tmp_name'], $datos['dni'].".pdf");
	}else{
		echo "El archivo pesa demasiado o no tiene extensión .pdf";
		header("refresh:3;url=index.html");
	}
	
	
	?>
</body>
</html>