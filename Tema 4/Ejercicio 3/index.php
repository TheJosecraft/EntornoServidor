<!--Modificar el código anterior, para que se muestren datos compresibles para el
usuario, es decir, que se vea el nombre del alumno que está matriculado.
ALUMNO CÓDIGO AÑO NOTA
-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 3</title>
</head>
<body>
    <?php
    include 'funciones.php';
    
    $consulta = "select * from matriculas m, alumnos a
                where m.dni = a.dni";
    
    $datos = mysqli_query($conexion, $consulta);
    
    if(!$datos){
        echo "Ha habido un error en la consulta de datos";
    }else{
        $num_filas = mysqli_num_rows($datos);
        
        if($num_filas == 0){
            echo "No hay alumnos para mostrar";
        }else{
            echo "<table border><th>ALUMNO</th><th>CÓDIGO</th><th>AÑO</th><th>NOTA</th>";
            
            for($i = 0; $i < $num_filas; $i++){
                while($fila = mysqli_fetch_array($datos, MYSQLI_ASSOC)){
                    echo "<tr>";
                    echo "<td>$fila[nombre]</td>";
                    echo "<td>$fila[codigo]</td>";
                    echo "<td>$fila[año]</td>";
                    echo "<td>$fila[nota]</td>";
                    echo "</tr>";
                }
            }
            
        }
        
        echo "</table>";
        
        mysqli_close($conexion);
    }
    ?>
</body>
</html>