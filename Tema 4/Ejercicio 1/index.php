<!--Escribir un programa PHP – MySQL que muestre por pantalla todos los alumnos del
centro. Los alumnos deberán ir ordenados de menor a mayor. Hacerlo en una tabla
como la siguiente:-->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Ejercicio 1</title>
</head>

<body>
    <?php
    include 'funciones.php';
    
        $consulta = "select * from alumnos
                    order by edad";
        $datos = mysqli_query($conexion, $consulta);
        
        if(!$datos){
            echo "Ha habido un error con la consulta de datos";
        }else{
            
            $num_filas = mysqli_num_rows($datos);
            
            if($num_filas == 0){
                echo "No hay alumnos para mostrar";
            }else{
                echo "En el centro hay un total de $num_filas alumnos: <br>";
                echo "<table border><th>NOMBRE</th><th>DNI</th><th>EDAD</th>";
                
                for($i = 0; $i < $num_filas; $i++){
                    while($fila = mysqli_fetch_array($datos, MYSQLI_ASSOC)){
                        echo "<tr>";
                        echo "<td>$fila[nombre] </td>";
                        echo "<td>$fila[dni] </td>";
                        echo "<td>$fila[edad] </td>";
                        echo "</tr>";
                    }
                }
                
                
                
                mysqli_close($conexion);
            }
        }
    ?>
</body>

</html>
