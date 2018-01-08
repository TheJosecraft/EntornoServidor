<!--Escribir un programa PHP – MySQL que muestre por pantalla todas las matrículas
que hay en el centro.
DNI CÓDIGO AÑO NOTA-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 2</title>
</head>
<body>
    <?php
    include 'funciones.php';
    
    $consulta = "select * from matriculas";
    
    $datos = mysqli_query($conexion, $consulta);
    
    if(!$datos){
        echo "Ha habido un error en la consulta de datos";
    }else{
        $num_filas = mysqli_num_rows($datos);
        
        if($num_filas == 0){
            echo "No hay alumnos para mostrar";
        }else{
            echo "<table border><th>DNI</th><th>CÓDIGO</th><th>AÑO</th><th>NOTA</th>";
            
            for($i = 0; $i < $num_filas; $i++){
                while($fila = mysqli_fetch_array($datos, MYSQLI_ASSOC)){
                    echo "<tr>";
                    echo "<td>$fila[dni]</td>";
                    echo "<td>$fila[codigo]</td>";
                    echo "<td>".$fila['año']."</td>";
                    echo "<td>$fila[nota]</td>";
                    echo "</tr>";
                }
            }
            
            mysqli_close($conexion);
        }
    }
    
    ?>
</body>
</html>