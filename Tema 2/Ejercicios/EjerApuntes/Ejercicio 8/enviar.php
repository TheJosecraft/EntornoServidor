<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 8</title>
</head>
<body>
    <?php
    $nuevo_nombre = $_POST['nom'];
    
    $nom_temporal = $_FILES['arc']['tmp_name'];
    $tipo = $_FILES['arc']['type'];
    $tam = $_FILES['arc']['size'];
    $nom_original = $_FILES['arc']['name'];
    
    $tam_megas = ($tam / 1024)/1024;
    
    switch($tipo){
        case 'image/jpeg':
            $nuevo_nombre .= '.jpg';
            break;
        case 'image/png':
            $nuevo_nombre .= '.png';
            break;
    }
    
    move_uploaded_file($nom_temporal, $nuevo_nombre);
    
    echo "<table border><tr><td>Nombre original</td><td>Nuevo nombre</td>";
    echo "<td>Tamaño en megas</td><td>Tipo de imagen</td>";
    echo "<tr><td>$nom_original</td><td>$nuevo_nombre</td>";
    echo "<td>$tam_megas</td><td>$tipo</td></tr>";
    ?>
</body>
</html>