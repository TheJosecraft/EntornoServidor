<!--. Escribir un programa PHP – MySQL que por medio de formularios le pida al
usuario los datos de una nueva asignatura y lo introduzca en la base de datos
“Centro”-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 5</title>
</head>
<body>
   
   <form action="#" method="post">
       <label for="">Créditos</label>
       <input type="text" name="creditos">
       <br>
       <label for="">Trimestre</label>
       <input type="number" min="1" max="3" name="trimestre">
       <br>
       <input type="submit" name="enviar">
   </form>
    <?php
    include 'funciones.php';
    
    if(isset($_POST['enviar'])){
        $creditos = $_POST['creditos'];
        $trimestre = $_POST['trimestre'];
        
        $consulta = "insert into asignaturas values (null, $creditos, '$trimestre')";
        
        if(!$consulta){
            echo "La consulta es errónea";
        }else{
            mysqli_query($conexion, $consulta);
            echo "Asignatura añadida correctamente";
            mysqli_close($conexion);
        }
    }
    
    ?>
</body>
</html>