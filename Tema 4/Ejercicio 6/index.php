<!--Escribir un programa PHP – MySQL que, pida al usuario un nombre de alumno y
muestre todas las matriculas que ha realizado ese alumno a lo largo del tiempo.
Nota: no mostrar dni de alumnos, si no su nombre.-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 6</title>
</head>
<body>
    <form action="#" method="post">
        <label for="">Alumno</label>
        <input type="text" name="alumno">
        <br>
        <input type="submit" name="enviar">
    </form>
    <br>
    
    <?php
    include 'funciones.php';
    
    if (isset($_POST['enviar']))
    {
        $alumno = $_POST['alumno'];
        
        $consulta = "select * from matriculas m, alumnos a
                    where m.dni = a.dni
                    and a.nombre = '$alumno'
                    order by m.año";
        
        if (!$consulta)
        {
            echo 'La consulta no es correcta';
        }
        else
        {
            $datos = mysqli_query($conexion, $consulta);
            
            $num_filas = mysqli_num_rows($datos);
            
            if ($num_filas == 0)
            {
                echo 'No hay datos que mostrar';
            }
            else
            {
                echo '<table border><th>Nombre</th><th>Codigo</th><th>Año</th><th>Nota</th>';
                while($fila = mysqli_fetch_array($datos, MYSQLI_ASSOC)){
                    echo '<tr>';
                    echo "<td>$fila[nombre]</td>";
                    echo "<td>$fila[codigo]</td>";
                    echo "<td>$fila[año]</td>";
                    echo "<td>$fila[nota]</td>";
                    echo '</tr>';
                }
            }
            mysqli_close($conexion);
        }
        
    }
    ?>
</body>
</html>