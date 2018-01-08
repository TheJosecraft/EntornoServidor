<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 1</title>
</head>
<body>
    <?php
    
//    $nombre1 = $_FILES['imagen1']['name'];
//    $tipo = $_FILES['imagen1']['type'];
//	  $nombre2 = $_FILES['imagen2'][];
	
    $main = array();
    
    foreach($_FILES as $posicion => $valores){
        $main[] = $_FILES[$posicion];
    }
    for($i = 0; $i < count($main); $i++){
        switch($main[$i]['type']){
        case 'image/jpeg':
        case 'image/png':
			$ruta = $main[$i]['name'];
			move_uploaded_file($main[$i]['tmp_name'], $ruta);
			
            break;
        default:
            echo "No es una imagen";
            break;
        }
    }
	
	
	
	if($main[0]['size'] > $main[1]['size']){
		echo "<img src=".$main[0]['name'].">";
		echo "<img src=".$main[1]['name'].">";
	}else{
		echo "<img src=".$main[1]['name'].">";
		echo "<img src=".$main[0]['name'].">";
	}
    
    ?>
</body>
</html>