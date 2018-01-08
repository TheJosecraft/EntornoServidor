<!--4. Escribir un programa PHP – MySQL que muestre todas las asignaturas que se
imparten en el centro. Ordenarlas por curso, haciendo una tabla por cada trimestre.-->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Ejercicio 4</title>
</head>

<body>
    <?php
    include 'funciones.php';
    
    $trimestres = "select distinct trimestre from asignaturas";
    
    $tri = mysqli_query($conexion, $trimestres);
    
    if(!$tri){
        echo "Hay un error en la consulta";
    }else{
        
        $num_trimes = mysqli_num_rows($tri);
        
        for($i = 1; $i <= $num_trimes; $i++){
                
            $consulta = "select * from asignaturas a, matriculas m
                    where a.codigo = m.codigo
                    and a.trimestre = '$i'
                    order by m.año";
                
            $datos = mysqli_query($conexion, $consulta);
                
            echo "<h2>Trimestre $i:</h2>";
            echo "<table border><th>CÓDIGO</th><th>CRÉDITOS</th>";
            asignaturas($i, $datos);
            echo "</table>";
        }
        
        mysqli_close($conexion);
    }
    
    function asignaturas($t, $d){
        
                while($fila = mysqli_fetch_array($d, MYSQLI_ASSOC)){
                    if($fila['trimestre'] == $t){
                        echo "<tr>";
                        echo "<td>$fila[codigo]</td>";
                        echo "<td>$fila[creditos]</td>";
                        echo "</tr>";
                    }
                }
            
            }
    ?>
</body>

</html>
