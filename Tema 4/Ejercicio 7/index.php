<!--Escribir un programa PHP – MySQL que por medio de formularios le permita al
usuario introducir en la base de datos “Centro” una nueva matrícula. El formulario
estará compuesto por listas desplegables que mostrarán todos los alumnos, todas las
asignaturas y los cursos desde el actual hasta 2 cursos después. Además, permitirá
elegir la nota del alumno también con una lista desplegable (Notas desde 1 hasta 10)-->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Ejercicio 7</title>
</head>

<body>
    <?php
    include 'funciones.php';
    
    $cons_alum = "select dni, nombre from alumnos";
    $cons_asig = "select codigo from asignaturas";
    
    $alumnos = mysqli_query($conexion, $cons_alum);
    $asignaturas = mysqli_query($conexion, $cons_asig);
    ?>

        <form action="#" method="post">
            <label for="alumnos">Alumnos</label>
            <select name="alumnos" id="alumnos">
            <?php                 
            while($fila = mysqli_fetch_array($alumnos, MYSQLI_ASSOC))
                echo "<option value=$fila[dni]>$fila[nombre]</option>";
            ?>
            </select>
            <br>
            <label for="asignaturas">Asignaturas</label>
            <select name="asignaturas" id="asignaturas">
                <?php
                while($fila = mysqli_fetch_array($asignaturas, MYSQLI_ASSOC)){
                    echo "<option value=$fila[codigo]>$fila[codigo]</option>";
                }
                ?>
            </select>
            <br>
            <label for="año">Año</label>
            <select name="año" id="año">
                <?php
                
                for ($i = 0; $i <= 2; $i++)
                {
                    $fecha = date('Y') + $i;
                    echo "<option value=$fecha>$fecha</option>";
                }
                
                ?>
            </select>
            <br>
            <label for="nota">Nota</label>
            <select name="nota" id="nota">
                <?php
                for ($i = 1; $i <= 10; $i++)
                {
                    echo "<option value=$i>$i</option>";
                }
                ?>
            </select>
            <input type="submit" name="enviar">
        </form>
        <br>

        <?php
    if (isset($_POST['enviar']))
    {
        $alumno = $_POST['alumnos'];
        $asignatura = $_POST['asignaturas'];
        $año = $_POST['año'];
        $nota = $_POST['nota'];
        
        $insertar = "insert into matriculas values ('$alumno', $asignatura, $año, $nota)";
        
        if (!$insertar)
        {
            echo "La consulta es errónea";
        }
        else
        {
            echo "Datos introducidos correctamente";
            mysqli_query($conexion, $insertar);
            mysqli_close($conexion);
        }
        
        
    }
    ?>
</body>

</html>
