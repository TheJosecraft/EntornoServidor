<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ejercicio 3</title>
    <style>
        .cabecera{
            font-weight: bold;
            background-color: #8064A2;
            
        }
        .cabecera td{
            padding-right: 15px;
            padding-left: 5px;
        }
        
        tr:nth-child(2n){
            background-color: #D8D8D8;
        }
        
        td.notas{
            text-align: center;
        }
        
        .fila1{
            width: 80px;
            background-color: #8064A2;
            color: white;
            font-weight: bold;
            padding-right: 15px;
            padding-left: 5px;
        }
        
        .tabla{
            border-collapse: separate;
            border-spacing: 0px 0px;
        }
        
        body{
            font-family: Arial;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <?php
    $alumno = 'Antonio';
    
    $alumnos = array("Antonio" => array("Matematicas" => 5, 
                                         "Lengua" => 8.3, 
                                         "CienciasNaturales" => 9, 
                                         "Geografia" => 7),
                      
                      "Ana" => array("Matematicas" => 8, 
                                         "Lengua" => 7, 
                                         "CienciasNaturales" => 4.5, 
                                         "Geografia" => 9),
                      
                      "Benito" => array("Matematicas" => 9, 
                                         "Lengua" => 6.75, 
                                         "CienciasNaturales" => 9, 
                                         "Geografia" => 3.1),
                      
                      "Manolo" => array("Matematicas" => 4, 
                                         "Lengua" => 6, 
                                         "CienciasNaturales" => 3, 
                                         "Geografia" => 6.5),
                      
                      "Juan" => array("Matematicas" => 8, 
                                         "Lengua" => 8.5, 
                                         "CienciasNaturales" => 7, 
                                         "Geografia" => 4.9),
                      
                      "Javier" => array("Matematicas" => 6.25, 
                                         "Lengua" => 8.4, 
                                         "CienciasNaturales" => 9.25, 
                                         "Geografia" => 2),
                      
                      "Laura" => array("Matematicas" => 5, 
                                         "Lengua" => 5.5, 
                                         "CienciasNaturales" => 3.75, 
                                         "Geografia" => 6),
                      
                      "Jose" => array("Matematicas" => 9, 
                                         "Lengua" => 9.5, 
                                         "CienciasNaturales" => 10, 
                                         "Geografia" => 8),
                      
                      "Alonso" => array("Matematicas" => 5, 
                                         "Lengua" => 4.2, 
                                         "CienciasNaturales" => 9.1, 
                                         "Geografia" => 2.2),
                      
                      "Marina" => array("Matematicas" => 6, 
                                         "Lengua" => 6.7, 
                                         "CienciasNaturales" => 8.2, 
                                         "Geografia" => 4.6)
                     );
    
    echo "<table class='tabla' cellspacing=10>";
    echo "<tr class='cabecera'><td>Alumno</td><td>Matemáticas</td><td>Lengua</td><td>Ciencias Naturales</td><td>Geografía</td><td>Media</td></tr>";
    foreach($alumnos as $nombre => $asignaturas){
        $media = 0;
        echo "<tr>";
        echo "<td class='fila1'>$nombre</td>";
        foreach($asignaturas as $asignatura => $nota){
            echo "<td class='notas'>$nota</td>";
            $media += $nota;
        }
        $media /= count($asignaturas);
        
        echo "<td class='notas'>".round($media, 2)."</td>";
        echo "</tr>";
    }
    echo "</table>";
    
    echo "<br>";
    
    
    
    echo "<table class='tabla' cellspacing=10>";
    echo "<tr class='cabecera'><td>Alumno</td><td>Matemáticas</td><td>Lengua</td><td>Ciencias Naturales</td><td>Geografía</td><td>Media</td></tr>";
    echo "<tr>";
    echo "<td class='fila1'>$alumno</td>";
    foreach($alumnos[$alumno] as $nombre => $nota){
        echo "<td class='notas'>".$alumnos[$alumno][$nombre]."</td>";
        $media += $nota;
    }
    $media /= 4;
    echo "<td class='notas'>".round($media, 2)."</td>";
    echo "</tr>";
    echo "</table>";
    ?>
    
    
    
</body>
</html>