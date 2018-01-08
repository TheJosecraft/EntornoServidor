<!--Crear un sitio web que permita a los usuarios subir su foto de perfil. Para ello
habrá un formulario donde el usuario introducirá su Nick y su foto. El sitio
guardará la foto en una carpeta que lleve como nombre el Nick del usuario y le
pondrá como nombre a la foto también el Nick del usuario. -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Ejercicio 6</title>
</head>
<body>
	<?php
	
	$datos = $_POST;
	$archivo = $_FILES;
	
	if(!file_exists("./".$datos['nick'])){
		mkdir("./".$datos['nick']);
	}
	
	move_uploaded_file($archivo['foto']['tmp_name'], "./".$datos['nick']."/".$datos['nick'].".jpg");
	?>
</body>
</html>